# Compile
```
g++ -Wall -std=c++14 -lgtest -o a.out alxr_test.cpp link.cpp main.cpp
alxr_test.cpp: В функции-члене «virtual void AlxrTest_InsertInTheMiddle_Test::TestBody()»:
alxr_test.cpp:42:18: ошибка: «class LinkedList» has no member named «insert»
  auto new_it = a.insert(it, 2);
                  ^
Makefile:10: ошибка выполнения рецепта для цели «a.out»
make: *** [a.out] Ошибка 1
```

Если компилировать без теста на `insert`, то сборка успешна:
```
g++ -Wall -std=c++14 -lgtest -o a.out alxr_test.cpp link.cpp main.cpp
```

# Run tests
Программа зависает при вызове метода `size()`
```
Running main() from gtest_main.cc
[==========] Running 4 tests from 1 test case.
[----------] Global test environment set-up.
[----------] 4 tests from AlxrTest
[ RUN      ] AlxrTest.CheckSize
```
