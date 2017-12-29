# Шустова Марина

## Подсчёт фраз (Задача 1). Ok.

**Код** - в процессе.

- [Ok] `using namespace std;` в заголовочном файле.

- [Ok] В CMakeLists.txt в `set(SOURCE_FILES ...)` не нужны заголовочные файлы (`Header.h`).

- [Ok] Разная сигнатура функции `work_with_arg`:

```
Header.h
37:void work_with_arg(const int& cgra, char** vgra, int &amount, int &freq, int &stream, int &place);
help_funkt.cpp
3:int work_with_arg(const int& cgra, char** vgra, int &amount, int &freq, int &place, int &stream)
```

- [Пожелание] Передавать коллекции в функции `vect_to_map`, `map_to_vect` по константным ссылкам.

**Тесты** - Ok.

[repo](https://bitbucket.org/shustova_oop/room_with_project)

## Календарь (Задача 2). Ok.

**Код** - Ok.

- [Ok] Нормализация работает только для полного конструктора.

- [Ok] Инициализацию вектора лучше написать через список инициализации:
```C++
std::vector<int> dim2{31, 30, 28, 31, ...};
```

- [Ok] Класс `DateInterval` не реализован.

- [Ok] Лишний токен после `#endif`:
```C++
Header.h:93:8: warning: extra tokens at end of #endif directive [-Wendif-labels]
#endif CALENDAR_HEADER_H
       ^
```

- [Ok] Оператор сравнения лучше реализовать как метод, а не как свободную функцию, `const` не имеет смысла:
```
const bool operator ==(const Date &a1, const Date &a2);
```

- [Ok] Метод `formatDate` не реализован.

**Тесты** - Ok.

[repo](https://bitbucket.org/shustova_oop/calendar)

## Морской бой (Задача 3). Ok.

**Код** - Ok.

[repo](https://bitbucket.org/shustova_oop/battleship)

(проверено 3 дек)

## Жизнь (Задача 4). Ok.

**Код** - ok.

[repo](https://bitbucket.org/shustova_oop/life)

(проверено 19 дек)
