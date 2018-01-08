# Галиос Максим

## Подсчёт фраз (Задача 1). Ok.

**Код** - Ok.

- [Ok] Не смешивать код первой и второй лабораторных. Как минимум: держать в разных папках.

- [Ok] Функция `sort_phrases` не должна модифицировать аргумент `phrases`,
т.е. должна принимать его по константной ссылке.

- [Ok] Для сортировки фраз следует использовать `std::sort`

- [Ok] Если запустить программу со следующими аргументами: `Lab_One.exe  -m 3 -n 3 file.txt`, то длина фразы по прежнему 2, а не 3.

**Тесты** - Ok.

```
Tests.cpp:3:20: fatal error: catch.h: Нет такого файла или каталога
```

[repo](https://bitbucket.org/galios_16203/repository1)

(проверено 2 дек)

## Календарь (Задача 2). В процессе.

**Код** - в процессе.

- [Ok] Возвращаемым значением оператора присваивания должна быть ссылка, а не объект; аргумент должен быть константной ссылкой:
```C++
DateInterval operator = (const DateInterval interval);
```

- [Ok] Аналогично `Date  operator = (const Date date);`

- Аргументы должны передаваться как константные ссылки, а не константные значения:
```C++
DateInterval &operator = (const DateInterval interval);
bool operator==(const DateInterval interval) const;
Date&  operator = (const Date date);
bool operator==(const Date date) const;
std::string formDate(std::string format);
```

- Функция `localtime_s` не определена:
```C++
Date.cpp: In constructor ‘Date::Date()’:
Date.cpp:9:24: error: ‘localtime_s’ was not declared in this scope
  localtime_s(&now, &raw);
                        ^
// http://en.cppreference.com/w/c/chrono/localtime :
As with all bounds-checked functions, localtime_s is only guaranteed to be available if __STDC_LIB_EXT1__ is defined by the implementation and if the user defines __STDC_WANT_LIB_EXT1__ to the integer constant 1 before including time.h.
```

- Логика этого сравнения непонятна и, скорее всего, неверна:
```C++
Date.cpp: In member function ‘std::__cxx11::string Date::formDate(std::__cxx11::string)’:
Date.cpp:215:15: warning: suggest parentheses around comparison in operand of ‘==’ [-Wparentheses]
  if (found[0] == found[1] == found[2] == found[3] == found[4] == found[5] == found[6]) str = "Invalid date format";
               ^
```

**Тесты** - в процессе.

[repo](https://bitbucket.org/galios_16203/repository1)

(проверено 8 янв)

## Морской бой (Задача 3). Ok.

**Код** - Ok.

[repo](https://bitbucket.org/galios_16203/repository1)

(проверено 29 дек)
