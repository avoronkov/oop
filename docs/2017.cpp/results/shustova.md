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

## Календарь (Задача 2). В процессе.

**Код** - в процессе.

- Нормализация работает только для полного конструктора.

- [Ok] Инициализацию вектора лучше написать через список инициализации:
```C++
std::vector<int> dim2{31, 30, 28, 31, ...};
```

- [Ok] Класс `DateInterval` не реализован.

**Тесты** - В процессе.

[repo](https://bitbucket.org/shustova_oop/calendar)
