# Использование CMake для сборки C++ проектов

Очень часто оказывается удобным иметь кроссплатформенный способ сборки
C++ проектов: например, когда часть студентов программирует под Windows,
часть - под Linux, а семинарист проверяет задачи под Fedora Linux 22, g++-5.1.1 :)
Хорошим решением в таком случае является использование [CMake](http://www.cmake.org/).

## Установка CMake

### Windows

1 Скачать [Win32 Installer для CMake](http://www.cmake.org/download/)

2 Установить.

3 Открыть консоль ([Far Manager](http://farmanager.com/index.php?l=en) подойдёт),
  убедиться, что `cmake` запускается и работает:
```
C:\> cmake --version
cmake version 3.2.2

CMake suite maintained and supported by Kitware (kitware.com/cmake).
```

4 Если на предыдущем пункте что-то пошло не так, необходимо добавить `C:\Program Files\CMake\bin` в переменную среды `%PATH%`

### Linux

`apt-get install cmake` или	`yum install cmake` или `zypper install cmake`
или я не знаю, какой у вас дистрибутив, значит вы лучше меня разбираетесь, как в нём ставить софт :)

## CMake-файл для сборки проекта

1 Найдите папку, в которой лежат исходные файлы вашего проекта

2 Создайте в ней файл `CMakeLists.txt` со следующим содержанием:
```
cmake_minimum_required (VERSION 3.1.0)
project (CoolProj)
add_executable(auto main.cpp func.cpp)

set_property(TARGET auto PROPERTY CXX_STANDARD 14)
set_property(TARGET auto PROPERTY CXX_STANDARD_REQUIRED ON)
```

Разберём подробнее:

* `cmake_minimum_required` - минимальная версия `CMake`, необходимая для сборки проекта.

* `project` - имя проекта.

* `add_executable` - объявляем, что мы хотим собрать исполняемый файл,
`auto` - имя исполняемого файла, `main.cpp func.cpp` - список `.cpp` файлов,
необходимых для сборки (".h" в список не входят).

* `set_property(... CXX_STANDSRD 14)` и `set_property(... CXX_STANDARD_REQUIRED ON)` - директивы, которые говорят, что мы хотим использовать новые стандарты C++

Подробную информацию можно найти [здесь](http://www.cmake.org/documentation/) (например, [туториал](http://www.cmake.org/cmake-tutorial/)).

## Сборка проекта

1 Создать папку `build` в директории проекта и переместиться в неё.
  Структура проекта должна получиться примерно следующей:
```
build/       <-  мы здесь
CMakeLists.txt
func.cpp
func.h
main.cpp
```

2 Выполнить `cmake ..` (подготовка сборочных файлов для конкретной платформы: Visual Studio, Makefiles etc)

3 Выполнить `cmake --build .` (сборка проекта с использованием сборочных файлов)

4 Если всё завершилось успешно, то в директории `build` появятся исполняемый файл проекта (в Windows он обычно лежит где-нибудь в `build\Debug`)

5 Запустить исполняемый файл.. Profit!

Если у вас всё получилось, то и на другой платформе всё (скорее всего) соберётся!
