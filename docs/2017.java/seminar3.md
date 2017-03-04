# Семинар 3 (27.02.2017)

## Многопоточное (параллельное) программирование.

Язык Java позволяет создавать несколько потоков управления в рамках одной программы.
Эти потоки (threads) могут исполняться параллельно (на разных ядрах процессора) или "квази-параллельно" - на одном ядре процессора за счёт переключения контекста процессов.

Рассмотрим для примера задачу, в которой 2 потока одновременно увеличивают значение общего счётчика.
В примере используется класс `Thread`, который позволяет запускать код, определенный внутри метода `run()` в отдельном потоке.

```Java
// Вариант 1.

#ckage voronkov.increment;

public class Main {
    public static void main(String[] args) {
        Counter c = new Counter();
        Thread t1 = new IncThread(c);
        Thread t2 = new IncThread(c);
        // "запускаем" потоки
        t1.start();
        t2.start();
        try {
            // дожидаемся их завершения
            t1.join();
            t2.join();
            System.out.printf("count = %d", c.get());
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }
}

// Класс для хранения счётчика
class Counter {
    private int value;
    public Counter() {}
    public int get() {
        return value;
    }
    public void set(int v) {
        value = v;
    }
}

// Класс-поток увеличивающий значение счётчика 100000 раз
class IncThread extends Thread {
    private Counter counter;
    public IncThread(Counter n) {
        counter = n;
    }
    public void run() {
        for (int i=0; i<times; i++) {
            int value = counter.get();
            counter.set(value + 1);
        }
    }
    public static final int times = 100000000;
}
```

Запуская такую программу, мы можем ожидать, что итоговое значение счётчика будет равно 100000000 (10000000 + 10000000),
но в реальности получится что-то вроде:
```
count = 174285374
```

Значительная часть инкрементов "потерялась". Почему?
Ответ состоит в том, что порядок выполнения операций в многопоточной программе недетерменирован, т.е. переключения контекстов потоков могут происходить в произвольный момент.
Например, возможна такая ситуация:
```
thread1: int value = counter.get(); // value = 0
thread1: counter.set(value + 1); // counter = 1
thread2: int value = counter.get(); // value = 1
thread2: counter.set(value + 1); // counter = 2
```

когда счётчик увеличивается как ожидается.
Но возможна и такая ситуация:
```
thread1: int value = counter.get(); // value = 0
thread2: int value = counter.get(); // value = 0
thread1: counter.set(value + 1); // counter = 1
thread2: counter.set(value + 1); // counter = 1
```
В этом случае итоговое значение счетчика равно 1, а не двум.
Ошибки такого рода называют "состояние гонки" ("race condition").

Попробуем это исправить. Добавим вместо метода `set` "атомарный" метод увеличения счётчика `addOne`:
```Java
class Counter {
    private int value;
    public Counter() {}
    public int get() {
        return value;
    }
    public void addOne() {
        value++;
    }
}

class IncThread extends Thread {
    private Counter counter;
    public IncThread(Counter n) {
        counter = n;
    }
    public void run() {
        for (int i=0; i<times; i++) {
            counter.addOne();
        }
    }
    public static final int times = 10000000;
}
```

Кажется, что всё должно работать, но проблема заключается в том, что `value++` это не атомарная операция.
С точки зрения Java это эквиватентно `int newvalue = value + 1; value = newvalue;`, т.е. две операции, а не одна,
и между ними возможно переключение контекста потоков.

Попробуем сделать метод `addOne` действительно атомарным. Для этого необходимо добавить `synchronized` в объявление метода:
```Java
    public synchronized void addOne() {
        value++;
    }
```

Только один `synchronized` метод объекта может исполняться в каждый момент времени.
Если один поток пытается вызвать synchronized метод объекта в то время,
как некоторый synchronized метод уже исполняется другим потоком -
первый поток блокируется (останавливается) до окончания выполнения этого метода в другом потоке.
На этот раз итоговое значение счётчика правильное:
```
count = 10000000
```

Другой метод синхронизации в многопоточной программе: блокировка на уровне объектов.
Перед тем, как вызвать метод объекта, мы пытаемся захватить "монитор" объекта при помощи synchronized-блока.
(если монитор уже захвачен, то выполнение потока блокируется до освобождения монитора):
```Java
class Counter {
	// ...
    public void addOne() {
        value++;
    }
}

class IncThread extends Thread {
	// ...
    public void run() {
        for (int i=0; i<times; i++) {
            synchronized (counter) { // блокирование объекта counter
                counter.addOne(); // безопасная работа с counter
            } // освобождение counter при выходе из блока
        }
    }
    public static final int times = 10000000;
}
```

## Проблема "Производителя-потребителя"
В многопоточных системах часто встречается т.н. проблема производителя и потребителя:
один поток "производит" некоторый ресурс, который необходим другому потому,
при этом второй поток не может продолжать свою работу, если ресурс недоступен.

В Java эту проблему можно решить при помощи методов `wait` и `notify`,
которые позволяют "подождать", если ресурс недоступен и "сообщить" остальным потокам, что сотояние ресурса изменилось.
(примеры кода можно найти в интернете).
