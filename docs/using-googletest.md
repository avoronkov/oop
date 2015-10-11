# Запуск unit-тестов с использованием GoogleTest

## Общая информация

Для того чтобы использовать GoogleTest в своём проекте необходимо [скачать архив с исходниками gtest](https://code.google.com/p/googletest/downloads/list),
собрать статическую библиотеку `gtest.a` (при желании `gtest_main.a`),
добавить в настройки своего проекта пути `$GTEST` и `$GTEST/include`,
собрать проект, запустить тесты.

Profit!

А теперь к деталям :)

## Visual Studio 2012 и выше

В сети можно поискать туториал, как запустить gtest-тесты в visual studio,
[например, вот этот](http://www.bogotobogo.com/cplusplus/google_unit_test_gtest.php).

Проверить на практике не удалось, но инструкция выглядит вполне адекватной.

## Linux

Самый простой случай.

В большинстве дистрибутивов Linux в репозиториях есть пакет `gtest-devel`, который необходимо поставить.
После этого нужно добавить флаги линковщика `-lgtest` и, при желании, `-lgtest_main`:
```
g++ -Wall -std=c++14 -lgtest -lgtest_main *.cpp -o runTests
```

## CMake

Самый универсальный способ - должен работать на всех платформах без изменений.
Общие сведения про установку CMake описаны [здесь](cmake/).

Создадим папку с проектом `task1`, положим туда исходники первой задачи.
Далее распакуем архив с gtest в подпапку `task1/gtest-1.7.0` и создадим
файл `CMakeLists.txt`.
Содержимое прокта должно выглядеть так:
```
task1/
     + gtest-1.7.0/               <- исходники gtest здесь
	 + build/                     <- собираться проект будет здесь
	 + CMakeLists.txt
	 + LinkedList.h
	 + LinkedList.cpp
	 + tests.cpp                  <- тесты здесь
```

В CMakeLists.txt надо написать следующее:
```
cmake_minimum_required(VERSION 2.8)
project(LinkedList)

add_subdirectory(gtest-1.7.0)

include_directories(${gtest_SOURCE_DIR}/include ${gtest_SOURCE_DIR})

add_executable(task1 LinkedList.cpp tests.cpp)

target_link_libraries(task1 gtest gtest_main)

set_properties(TARGET task1 PROPERTY CXX_STANDARD 14)
set_properties(TARGET task1 PROPERTY CXX_STANDARD_REQUIRED on)
```

Здесь мы объявляем проект `LinkedList`, добавляем поддиректорию `gtest-1.7.0`,
говорим, что нужно собрать исполняемый файл task1 и слинковать его с библиотеками `gtest` и `gtest_main`.

Сборка:
```
cd build/
cmake ..
cmake --build .
```
(на Linux вместо `cmake --build .` можно просто выполнить `make`).

После этого запустить `task1` (или `task1.exe`), посмотреть на ошибки.
Исправить ошибки, пересобрать командой `cmake --build .`.
Повторить.

## "Хитрый" способ

Можно попробовать добавить исходники `gtest` непосредственно в свой проект и
собирать вместе со своим проектом.
У меня так не получилось, но в вашей группе есть по-крайней мере один человек,
который говорит, что так делал :)
