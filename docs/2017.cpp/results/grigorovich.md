# Григорович Артём

## Подсчёт фраз (Задача 1). Ok.

**Код** - Ok.

- [X] Нельзя указать один опциональный параметр -n:
```
$ ./phrases -n 3 ./phrases.cpp
Can't open input file -n
```

- [X] Параметр `-n` не влияет на длину фразы:
```
$ ./prog -n 4 main.cpp
cout << (10)
== 0) (7)
0) && (6)
buf = (6)
```

- [X] Заголовочные файлы не нужно передавать компилятору (Makefile)

- [Ok] Нельзя использовать функции из библиотеки C (`strcmp`).

**Тесты** - Ok:

- [Ok] Реализация функций скопирована в `test.cpp`

- [Ok] map не определен:
```
test.cpp:98:1: error: ‘map’ does not name a type
 map<string, int> countphr(const vector<string>& buffer)
```

- [Ok] `Can't open input file c:\temp\in_t.txt`

- [Ok] Передача временного объекта в функцию, принимающую неконстантную ссылку:
```
tests-text2pharses.cpp:15:32: error: cannot bind non-const lvalue reference of type ‘std::istream& {aka std::basic_istream<char>&}’ to an rvalue of type ‘std::basic_istream<char>’
  REQUIRE(v1 == text2phrases(1, stringstream(in)));
                                ^~~~~~~~~~~~~~~~
```

- [Ok] Использование классов стандартной библиотеки без указания пространства имен:
```
tests-text2phrases.cpp:7:2: error: ‘stringstream’ was not declared in this scope
tests-text2phrases.cpp:16:2: error: ‘vector’ was not declared in this scope
```

[repo](https://bitbucket.org/grigorovich_oop/phrases.git)

## Календарь (Задача 2). В процессе.

**Код** - в процессе:
- [Ok]
```
T2_head.h:25:2: error: extra qualification ‘Calendar::’ on member ‘Calendar’ [-fpermissive]
```
- [Ok]
```
calend.cpp:70:2: error: ‘gmtime_s’ was not declared in this scope

calend.cpp:79:2: note: suggested alternative: ‘gmtime_r’
```

- [Ok] Вместо реализации `itos` следует использовать `std::to_string`.

- [Ok] `operator==`, `operator!=` лучше реализовать как методы класса `Calendar`, а не как свободные функции.

- В определении `const bool operator> (const Calendar& v1, const Calendar& v2);` const не имеет смысла.

- В `T2_head.h` объявлена функция `bool operator> (Calendar& v1, Calendar& v2);`,
но в `calend.cpp` и `tests-functions.cpp` дважды(!) определена функция с другой сигнатурой: `const bool operator> (const Calendar& v1, const Calendar& v2)`.

- Также возвращаемое значение помечено `const` для `const Calendar operator+`, `const DateInterval get_interval`, `const Calendar add_interval`.

- Оператор `operator+=`, `operator-=` должны возвращать ссылку на первый аргумент (`Calendar&`), а не его копию.

**Тесты** - Ok.

[repo](https://bitbucket.org/grigorovich_oop/phrases.git)

(проверено 2 дек)
