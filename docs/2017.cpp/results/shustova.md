# Шустова Марина

## Подсчёт фраз (Задача 1). В процессе.

**Код** - в процессе.

- `using namespace std;` в заголовочном файле.

- В CMakeLists.txt в `set(SOURCE_FILES ...)` не нужны заголовочные файлы (`Header.h`).

- Разная сигнатура функции `work_with_arg`:
```
Header.h
37:void work_with_arg(const int& cgra, char** vgra, int &amount, int &freq, int &stream, int &place);
help_funkt.cpp
3:int work_with_arg(const int& cgra, char** vgra, int &amount, int &freq, int &place, int &stream)
```

**Тесты** - нет.

[repo](https://bitbucket.org/shustova_oop/room_with_project)
