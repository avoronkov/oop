# Compile
```
g++ -Wall -std=c++14 -lgtest -lgtest_main -o a.out list2.cpp alxr_test.cpp
```

# Run tests
```
Running main() from gtest_main.cc
[==========] Running 5 tests from 1 test case.
[----------] Global test environment set-up.
[----------] 5 tests from AlxrTest
[ RUN      ] AlxrTest.CheckSize
[       OK ] AlxrTest.CheckSize (0 ms)
[ RUN      ] AlxrTest.ForIteratorLoop
[       OK ] AlxrTest.ForIteratorLoop (0 ms)
[ RUN      ] AlxrTest.ForeachLoop
[       OK ] AlxrTest.ForeachLoop (0 ms)
[ RUN      ] AlxrTest.InsertInTheMiddle
[       OK ] AlxrTest.InsertInTheMiddle (0 ms)
[ RUN      ] AlxrTest.RemoveFromTheMiddle
[       OK ] AlxrTest.RemoveFromTheMiddle (0 ms)
[----------] 5 tests from AlxrTest (0 ms total)

[----------] Global test environment tear-down
[==========] 5 tests from 1 test case ran. (0 ms total)
[  PASSED  ] 5 tests.
```

# Замечания

* Формальные требования важны: класс должен называться `LinkedList`, а не `List`

* Не нужно создавать новую папку на каждый коммит - исходные файлы должны лежать в одном месте - [ссылка](using-subversion/)

* Нужно написать свои тесты.
