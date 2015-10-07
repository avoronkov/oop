# Compile
```
g++ -Wall -std=c++14 -lgtest -o a.out alxr_test.cpp iter.cpp my_lst.cpp cell.cpp main.cpp
In file included from alxr_test.cpp:2:0:
my_lst.h: В функции-члене «virtual void AlxrTest_CheckSize_Test::TestBody()»:
my_lst.h:113:7: ошибка: «int LinkedList::size» is private
   int size;
       ^
In file included from /usr/include/gtest/gtest.h:1929:0,
                 from alxr_test.cpp:1:
alxr_test.cpp:10:20: ошибка: в данном контексте
  ASSERT_EQ(size, a.size());
                    ^
alxr_test.cpp:10:25: ошибка: expression cannot be used as a function
  ASSERT_EQ(size, a.size());
                         ^
Makefile:10: ошибка выполнения рецепта для цели «a.out»
make: *** [a.out] Ошибка 1
```

Если заменить `size` на `get_size`, то компиляция успешна.
```
g++ -Wall -std=c++14 -lgtest -o a.out alxr_test.cpp iter.cpp my_lst.cpp cell.cpp main.cpp

```

# Run tests
```
The begining of the programm.
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
alxr_test.cpp:43: Failure
Value of: *new_it
  Actual: 3
Expected: 2
[  FAILED  ] AlxrTest.InsertInTheMiddle (0 ms)
[ RUN      ] AlxrTest.RemoveFromTheMiddle
alxr_test.cpp:58: Failure
Value of: *next_it
  Actual: 1
Expected: 3
[  FAILED  ] AlxrTest.RemoveFromTheMiddle (1 ms)
[----------] 5 tests from AlxrTest (2 ms total)

[----------] Global test environment tear-down
[==========] 5 tests from 1 test case ran. (2 ms total)
[  PASSED  ] 3 tests.
[  FAILED  ] 2 tests, listed below:
[  FAILED  ] AlxrTest.InsertInTheMiddle
[  FAILED  ] AlxrTest.RemoveFromTheMiddle

 2 FAILED TESTS
```
