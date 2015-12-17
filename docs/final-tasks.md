# Маленькие задачи

## Аргументы командной строки

Используя `boost::program_options` (или другую библиотеку)
написать программу, которая разбирает аргументы командной строки.
Должны поддерживаться следующие вызовы:

```
Run:
prog.exe hello world

Output:
other parameters: "hello" "world"
```

```
Run:
prog.exe --str "some string"

Output:
string parameter: "some string"
```

```
Run:
prog.exe --int 14

Output:
int parameter: 14
```

```
Run:
prog.exe --vec foo --vec bar --vec baz

Output:
vector: "foo" "bar" "baz"
```

```
Run:
prog.exe --count --count --count

Output:
count: 3
```

```
Run:
prog.exe one --int 11 --str hello --count --vec foo --vec bar two --count three

Output:
string parameter: "hello"
int parameter: 11
vector: "foo" "bar"
count: 2
other parameters: "one" "two" "three"
```

## Неявный конструктор
Следующий код компилируется и работает:
```
#include <iostream>

class Int {
    int value;
public:
    Int(int i): value{i} {}

    int operator*()const {
        return value;
    }   
};

void useInt(const Int & i) {
    std::cout << *i << std::endl;
}

int main() {
    int x{10};
    useInt(x); // output: 10
}
```
Почему? Как заставить компилятор принимать только явное использование класса `Int`:
```
	useInt(Int{x}); // output: 10
```

## Коллекции
Дана следуюшая функция:
```
void printCollection(const std::vector<int> & v) {
	int count = 0;
	std::cout << "{ "
	for (int i=0; i<v.size(); i++) {
		std::cout << v[i] << " ";
		count++;
	}
	std::cout << "}[" << count << "]";

}
```
Как сделать так, чтобы она могла рвботать с произвольными коллекциями?

## Счётчик количества вызовов
Дан следующий код:
```
int count = 0;

void fn() {
    count++;
}

template <typename F>
void call_few_times(F f) {
    for (int i=0; i < 10; i++) {
        f();
    }   
}

int main() {
    call_few_times(fn);
    std::cout << "fn() was called " << count << " times\n";
}

```
Как посчитать, сколько вызовов делает `call_few_times` не используя глобальную переменную?


## Список чисел Фибоначи без хранения в памяти
Реализовать `Fibonacci` так, чтобы следующий код показывал правильный результат:
```
for (auto n: Fibonacci(10)) {
	std::cout << n << std::endl;
}
// output: 1 2 3 5 8 13 21 34 55 89
```
При этом запрещается хранить всю последовательность чисел в памяти.

## Запоминание результата вычислений
```
class Calc {
    int limit;
public:
    Calc(int l): limit{l} {}

    int result() const {
        return calculate();
    }   
private:
    int calculate() const {
        std::cout << "calculate\n";
        int res = 0;
        for (int i=0; i<=limit; i++) {
            res += i;
        }   
        return res;
    }   
};

void call(const Calc & c) {
    for (int i=0; i<5; i++) {
        std::cout << c.result() << std::endl;
    }   
}

int main() {
    Calc c{10};
    call(c);
}
```
Как нужно изменить метод `result`, чтобы `calculate` вызывался только один раз,
а затем возвращался уже посчитанный ранее результат?

## Освобождение памяти
Исправьте следующий код так, чтобы объект `x` был удалён.
```
class X { 
public:
    X() { std::cout << "X()\n"; }
    ~X() { std::cout << "~X()\n"; }
};

X * makeX() {
    return new X();
}

void fn(const X *) {
    throw std::string("suddenly");
}

int main() {
    try {
        X * x = makeX();
        fn(x);
        delete x;
    } catch (std::string & s) {
        //  
    }   
}
```

## Захват вывода функции
```
void printSmth(std::ostream & out) {
    out << 13 << std::endl;
    out << "hello world" << std::endl;
    out << 2.5 << std::endl;
}
```
Как полуличить то, что выводит функция `printSmth` в виде строки?

## Деструкторы
```
class A { 
public:
    A() { std::cout << "A()\n"; }
    ~A() { std::cout << "~A()\n"; }
};

class B : public A { 
public:
    B(): A{} { std::cout << "B()\n"; }
    ~B() { std::cout << "~B()\n"; }
};

int main() {
    A * b = new B{};
    delete b;
}
```
Необходимо сделать так, чтобы объект класса `B` правильно удалялся.


## Константные ссылки
```
class IntHolder {
    int data;
public:
    IntHolder(int i): data{i} {}
    int & operator*() {
        return data;
    }   
};

void printHolderData(const IntHolder & h) {
    std::cout << *h << std::endl;
}

int main() {
    IntHolder h{10};
    *h += 3;
    std::cout << *h << std::endl;
    printHolderData(h);
}
```
Модифицировать класс `IntHolder` так, чтобы код с использованием функции `printHolderData` скомпилировался.

## Странный Print
Реализовать `Print` так, чтобы иметь возможность печатать несколько значений, разделенных пробелами.
После вывода списка пишется символ конца строки (`std::endl`)
```C++
int main() {
	Print()(1)(2)("hello")("world");
	Print()("foo")(1.5)("bar");
}
// output:
// 1 2 hello world '\n'
// foo 1.5 bar '\n'
```
