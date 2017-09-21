# Григорович Артём

## Подсчёт фраз (Задача 1). В процессе.

**Код** - в процессе.

- Нельзя указать один опциональный параметр -n:
```
$ ./phrases -n 3 ./phrases.cpp
Can't open input file -n
```

- Заголовочные файлы не нужно передавать компилятору (Makefile)

**Тесты** - в процессе:

- Реализация функций скопирована в `test.cpp`

- map не определен:
```
test.cpp:98:1: error: ‘map’ does not name a type
 map<string, int> countphr(const vector<string>& buffer)
```

- `Can't open input file c:\temp\in_t.txt`
