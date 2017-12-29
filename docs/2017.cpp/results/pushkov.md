# Пушков Федор

## Подсчёт фраз (Задача 1). В процессе.

**Код** - в процессе.

- [Ok] Использование `using namespace std;` - грубое нарушение общепринятого стиля кодирования.

- [Ok] Фукнции должны принимать аргументы непримитивных типов используя константные ссылки вместо значений.

- [Ok] Использование функций библиотеки C (`malloc`, `strtok`).

- [Ok] При работе с std::cin считывается только первая строка.

- [Ok] Программа работает только с файлами с расширением `.txt`.

- [Ok] Сделать, чтобы `get_words` принимала на вход `std::istream &`

- [Ok] Вместо `cout << "Wrong n number" << endl;` можно использовать исключения.

- [Ok] `cout << "Empty input" << endl;` не является ошибкой, сообщение можно не показывать.

- 2 цикла чтения из потока вместо одного:
```C++
    do {
        getline(is, str);
        phrase = phrase + " " + str;
    } while (is.get() != '\n');


    string word;
    istringstream iss(phrase, istringstream::in);
    while (iss >> word) {
        words.push_back(word);
    }
```

- [Ok] Некорректное условие выхода из первого цикла
(должна быть проверка на `EOF` вместо `\n`).

- [Ok] Программа не работает со стандартным потоком ввода, если в качестве имени файла указан `-`:
```C++
./lab1 - < funct.cpp
Too much arguments
```

- [Ok] Yellow-submarine test не пройден.

**Тесты** - В процессе.

- [Ok] В `main.cpp` включать заголовочный файл `#include "../lab1/main.h`

[repo](https://bitbucket.org/pushkov_oop/lab1)

(проверено 21 дек)

## Календарь (Задача 2). В процессе.

**Код** - Ok.

- [Ok] Функцию `normalise` следует сделать приватным методом класса `Date`

- Лишний префикс:

```C++
return DateInterval::DateInterval(*this, date);
```

- Тип `_int64` не определен.

**Тесты** - в процессе.

- `enum Month` используется раньше, чем объявлен:
```C++
main.h:26:57: error: use of enum ‘Month’ without previous declaration
  Date(int c_sec, int c_min, int c_hour, int c_day, enum Month c_month, int c_year);
                                                         ^
```

[repo](https://bitbucket.org/pushkov_oop/lab2)

(проверено 21 дек)

## Морской бой (задача 3). В процессе.

**Код** - в процессе.

[repo](https://bitbucket.org/pushkov_oop/lab3)

(проверено 21 дек)
