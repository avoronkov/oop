# Семинар 14 (04.12.2015)

## Шаблоны (templates)

### Шаблоны функций

Базовый пример использования шаблонов функций:
```C++
template <typename T> T add(const T & a, const T &b) {
	return a + b;
}
```

`add` - функция возвращающая результат сложения двух значений.
Функция применима к любым типам, для которых определён `operator+` и конструктор копирования
(копирование происходит при возврате значения).

Ключевые слова `typename` и `class` в аргументах шаблона равнозначны.

Использование шаблонной функции `add`:
```C++
int main() {
	std::cout << add(2, 3) << std::endl; // OK: 5
	std::cout << add(2.0, 3.5) << std::endl; // OK: 5.5
	std::cout << add(std::string("foo"), std::string("bar")) << std::endl; // OK: "foobar"

	std::cout << add(3, 2.5) << std::endl; // Error: missmatch types int and double
	std::cout << add<double>(3, 2.5) << std::endl; // OK: cat all arguments to double
}
```
Заметьте, что использование разных типов приводит к ошибке компиляции.
(Но можно указать тип аргументов явно)

Что делать, если нужно складывать аргументы разных типов?
"Простое" решение - указывать тип возвращаемого значения явно при использовании шаблона:
```C++
template <class A, class B, class C>
C add(const A & a, const B & b) {
	return a + b;
}

int main() {
	std::cout << add<double, int, double>(2.5, 3) << std::endl;
}
```

Но лучше воспользоваться автоматическим выводом типов.
Ключевое слово `decltype` в новых версиях стандарта C++
позволяет вычислять и использовать тип выражения:
```C++
	double x = 5.5;
	decltype(x) y = x; // type of `x` is 'double'
```

`decltype` можно использовать для вычисления возвращаемого значения,
но следующий не скомпилируется:
```C++
template <class A, class B>
decltype(a + b) add(const A & a, const B & b) {
	return a + b;
}
```
так как `a` и `b` определены после того, как они использованы в `decltype`.

Поэтому добавлена возможность использовать следующий синтаксис:
```C++
template <class A, class B>
auto add(const A & a, const B & b) -> decltype(a + b) {
	return a + b;
}

int main() {
	add(2, 2.5); // returns double as expected
}
```
