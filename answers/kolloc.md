# 01

Объект - сущность, обладающая поведением, состоянием и идентичностью.

Состояние - перечень свойств объекта.
Поведение - действие и реакция объекта на внешнее воздейтсвие.
Идентичность - свойство объекта, позволяющее отличать его от других объектов.

Ассоциация (связь) - клиент-сервер.
Агрегация (композиция) - часть-целое.

Состояние - суммарный результат поведения объекта.

# 02

Класс - множество объектов, имеющих общую структуру и поведение.

Отношения между классами:
- Зависимость (использование)
- Ассоциация (логическая связь)
- Агрегация
- Наследование

# 03. Принципы объектного подхода.

- Абстрагирование
- Инкапсуляция
- Модульность
- Иерархия

- Типизация
- Параллелизм (+-)
- Сохраняемость (-)

# 05

```C++
void swap1(double * a, double * b) {
	double t = *a;
	*a = *b;
	*b = t;
}

void swap2(double & a, double & b) {
	double t = a;
	a = b;
	b = t;
}
```

# 06 Жизненный цикл объекта

Конструкторы, деструкторы, placement new, placement delete

# 08 global static reference

```C++
#include <iostream>

double d = 10.0;
struct A {
	static double & valRef;
};
double & A::valRef = d;

int main() {
	std::cout << A::valRef << "\n";
}
```

# 10 extern C

```C++
#ifdef __cplusplus
extern "C" {
#endif

void foo();

#ifdef __cplusplus
}
#endif
```

# 11 anonymous namespace

```C++

namespace {
void bar();
}
```

# 12 

```C++
struct B { B(int value);  };
struct A : public B {
	V(int value): B(i) {}
};
```

# 13 Управление выделнием памяти

Аллокаторы.
Перегруженные операторы new, delete.

# 14. dynamic\_cast

Безопасное преобразование вверх, вниз и "вбок" по иерархии наследования.

# 15 Таблицы виртуальных функций

# 16 

При множественном наследовании.

# 17

`std::terminate` -> `abort`

(`set_terminate()`)

# 18

`std::uncaught_exception`

# 21
```C++
#include <iostream>

void init(int *x) {
	x = new int;
	*x = 50;
}

int main() {
	int v = 100;
	init(&v);
	std::cout << v << std::endl;
}
```



`100`

# 22

```C++
#include <iostream>

using std::cout;

struct A {
	A() { cout << "A()\n"; }
	~A() { cout << "~A()\n"; }
};

struct B : public A {
	B() { cout << "B()\n"; }
	~B() { cout << "~B()\n"; }
};

int main() {
	A * p = new B();
	delete p;
}
```

`AB~A()`

# 23

```C++
#include <iostream>

using std::cout;

struct A {
	A() { cout << "A"; }
	~A() { cout << "~A"; }
};

struct B {
	B() {
		cout << "B";
		throw 10;
	}
	~B() { cout << "~B"; }
};

struct C {
	A a;
	B b;
	C() { cout << "C"; }
	~C() { cout << "~C"; }
};

int main() {
	try {
		C theC;
	} catch (...) {
	}
}
```

`AB~A()`

# 24 Аллокаторы.

Аллокатор - обработчик выделения/освобождения памяти в C++.
