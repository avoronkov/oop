# Яшин Артём

## Подсчёт фраз (Задача 1). OK.

**Код** - OK.

- [Ok] Не следует использовать windows style разделитель в путях:
```
main.h:7:25: fatal error: gtest\gtest.h: Нет такого файла или каталога
 #include "gtest\gtest.h"
```
- [Ok] Некорректный синтаксис:
```
main.cpp:52:6: error: expected ‘(’ before ‘each’
  for each (auto s in sorted) {
```

- [Ok] Кажется, правильная команда для компиляции проекта должна содержать `tests.cpp`, например так:
```
g++ -std=c++14 -Wall main.cpp tests.cpp -lgtest -o phrases.exe
```

- [Ok] `using namespace std;` в заголовочном файле - грубое нарушение общепринятых codestyles.

- [Пожелание] Функции `vect2map` и `sortmap` должны принимать константные ссылки на коллекции.

**Тесты** - Ok.

- [Ок] Ошибка в tests.cpp
```
tests.cpp:41:2: error: #endif without #if
 #endif
```

- [Ok] `text2phrases` принимает первым аргументом неконстантную ссылку, поэтому в нее нельзя передать временный объект:
```
tests.cpp: In member function ‘virtual void text2phrases_text2phrases_test_Test::TestBody()’:
tests.cpp:13:30: error: invalid initialization of non-const reference of type ‘std::istream& {aka std::basic_istream<char>&}’ from an rvalue of type ‘std::basic_istream<char>’
  EXPECT_EQ(text2phrases(std::stringstream(in), 1), out1);
                                ^~~~~~~~~~~~~~~~
```

[repo](https://bitbucket.org/yashin_oop/nsu_oop)


## Календарь (Задача 2). В процессе.

**Код** - в процессе.

- [Ok] Конструктор по умолчанию должен создавать дату соответствующую текущему времени UTC.

- Тип `Month` лучше реализовать через [enum class](http://www.learncpp.com/cpp-tutorial/4-5a-enum-classes/).

- [Ok] Методы `add_second`, `add_minute` ... должны быть `const`.

- [X] Вместо метода `to_string()` лучше реализовать оператор вывода в поток (`operator<<(ostream &, const Calendar&)`.

- [Пожелание] Внутри методов лучше использовать прямой доступ к полям того же класса, вместо использования селекторов:
```C++
Calendar::Calendar(const Calendar& copy) {
// вместо:
    second = copy.get_second();
    minute = copy.get_minute();
    hour = copy.get_hour();
// лучше написать:
    day = copy.day;
    month = copy.month;
    year = copy.year;
}
```

- Не реализован класс `DateInterval`

- Множественные предупреждения компилятора:
```
g++ -Wall -std=c++14 tests.cpp calendar.cpp -o gtest
calendar.cpp: In constructor ‘calendar::Calendar::Calendar(long int, long int, long int, long int, calendar::Month, long int)’:
calendar.cpp:67:51: warning: unused variable ‘add_y’ [-Wunused-variable]
  unsigned int add_s, add_m, add_h, add_d, add_mn, add_y;
                                                   ^
calendar.cpp: In member function ‘calendar::Calendar calendar::Calendar::add_day(long int) const’:
calendar.cpp:206:10: warning: variable ‘days_cap’ set but not used [-Wunused-but-set-variable]
     long days_cap = 0;
          ^
calendar.cpp: In member function ‘calendar::Calendar calendar::Calendar::add_month(long int) const’:
calendar.cpp:233:15: warning: comparison between signed and unsigned integer expressions [-Wsign-compare]
   if (new_cap < tmp.day) {
               ^
calendar.cpp:247:15: warning: comparison between signed and unsigned integer expressions [-Wsign-compare]
   if (new_cap < tmp.day) {
               ^
calendar.cpp:226:7: warning: unused variable ‘is_bissextile’ [-Wunused-variable]
  bool is_bissextile = is_biss(this->year);
       ^
calendar.cpp:227:16: warning: variable ‘days_cap’ set but not used [-Wunused-but-set-variable]
  unsigned long days_cap, new_cap;
                ^
calendar.cpp: In member function ‘calendar::Calendar calendar::Calendar::add_year(long int) const’:
calendar.cpp:266:42: warning: suggest parentheses around ‘&&’ within ‘||’ [-Wparentheses]
  if (tmp.year > 9999 || tmp.year == 9999 && year > 0) {
                                          ^
calendar.cpp:273:43: warning: suggest parentheses around ‘&&’ within ‘||’ [-Wparentheses]
  } else if (tmp.year < 0 || tmp.year == 0 && year < 0) {
                                           ^
calendar.cpp: In function ‘char sign(long int)’:
calendar.cpp:25:1: warning: control reaches end of non-void function [-Wreturn-type]
 }
 ^
```

**Тесты** - Ok.

[repo](https://bitbucket.org/yashin_oop/lab2)
