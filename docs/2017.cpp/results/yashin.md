# Яшин Артём

## Подсчёт фраз (Задача 1). В процессе.

**Код** - в процессе.

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

- `using namespace std;` в заголовочном файле - грубое нарушение общепринятых codestyles.

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
