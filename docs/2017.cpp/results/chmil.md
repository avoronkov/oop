# Чмиль Александр

## Подсчёт фраз (Задача 1). Ok.

**Код** - Ok.

- [X] При чтении из файла создается `ifstream fin (filename);` на каждый вызов `input`, из-за чего программа не завершается.

- [Ok] При копировании объекта типа `arguments` копируется указатель `ifstream *fin`,
поэтому когда зовутся деструкторы объектов, то `delete fin;` зовется 2 раза для одного и того же объекта (что приводит к crash'у программы).

Поэтому для объектов, содержажих поля-указатели нуобходимо явно определять конструктор копии и оператор присваивания,
в которых создавать копию объекта.
В случае, если поле некопируемое (напр. `ifstream`), то класс тоже должен быть некопируемым, т.е.:
```C++
arguments(const & arguments) = delete;
arguments& operator=(const arguments&) = delete;
```

- [X] Копирование происходит при вызове функции `string2phrases (arguments arg)`, эта функция должна принимать ссылку на `arguments`.

- [Ok] Передавать коллекции в функции по ссылку (константной или нет).

**Тесты** - Ok.



[repo](https://bitbucket.org/chmil_oop/chmil_oop)

## Календарь (Задача 2). Ok.

**Код** - Ok

- [Ok] Использовать `enum class` вместо `enum`

**Тесты** - Ok.

[repo](ssh://hg@bitbucket.org/chmil_oop/lab2)

(проверено 3 дек)

## Морской бой (Задача 3). Ok.

**Код** - Ok.

- [Ok] Техническое поражение:
```C++
chmil vs bastrykina : winner is bastrykina (error: chmil (1) timeout)
chmil vs galios : winner is galios (error: Already shoot at C 3)
```

[repo](https://bitbucket.org/chmil_oop/lab3)

(Проверено 21 янв)

## Workflow (Задача 4). Ok.

**Код** - Ok.

- [Ok] Ошибка компиляции:
```
lab4/Factory.cpp:1:20: fatal error: factory.h: Нет такого файла или каталога
compilation terminated.
```

**Демонстрация** - Ok.

[repo](https://bitbucket.org/chmil_oop/lab4)

(Проверено 24 янв)
