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
