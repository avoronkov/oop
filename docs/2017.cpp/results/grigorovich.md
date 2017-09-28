# Григорович Артём

## Подсчёт фраз (Задача 1). В процессе.

**Код** - в процессе.

- [X] Нельзя указать один опциональный параметр -n:
```
$ ./phrases -n 3 ./phrases.cpp
Can't open input file -n
```

- Параметр `-n` не влияет на длину фразы:
```
$ ./prog -n 4 main.cpp
cout << (10)
== 0) (7)
0) && (6)
buf = (6)
```

- [X] Заголовочные файлы не нужно передавать компилятору (Makefile)

**Тесты** - в процессе:

- [Ok] Реализация функций скопирована в `test.cpp`

- [Ok] map не определен:
```
test.cpp:98:1: error: ‘map’ does not name a type
 map<string, int> countphr(const vector<string>& buffer)
```

- [Ok] `Can't open input file c:\temp\in_t.txt`

- Передача временного объекта в функцию, принимающую неконстантную ссылку:
```
tests-text2pharses.cpp:15:32: error: cannot bind non-const lvalue reference of type ‘std::istream& {aka std::basic_istream<char>&}’ to an rvalue of type ‘std::basic_istream<char>’
  REQUIRE(v1 == text2phrases(1, stringstream(in)));
                                ^~~~~~~~~~~~~~~~
```

[repo](https://bitbucket.org/grigorovich_oop/phrases.git)
