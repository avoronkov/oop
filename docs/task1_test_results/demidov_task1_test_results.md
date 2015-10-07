# Compile
```
g++ -Wall -std=c++14 -lgtest -o a.out alxr_test.cpp link.cpp main.cpp
In file included from alxr_test.cpp:2:0:
Header.h:24:35: предупреждение: passing NULL to non-pointer argument 1 of «LinkedList::iterator::iterator(value_type)» [-Wconversion-null]
   iterator * a = new iterator(NULL);
                                   ^
alxr_test.cpp: В функции-члене «virtual void AlxrTest_CheckSize_Test::TestBody()»:
alxr_test.cpp:8:5: ошибка: no match for «operator+=» (operand types are «LinkedList» and «int»)
   a += i;
     ^
alxr_test.cpp: В функции-члене «virtual void AlxrTest_ForIteratorLoop_Test::TestBody()»:
alxr_test.cpp:16:5: ошибка: no match for «operator+=» (operand types are «LinkedList» and «int»)
   a += i;
     ^
alxr_test.cpp:19:43: ошибка: no match for «operator++» (operand type is «LinkedList::iterator»)
  for (auto it = a.begin(); it != a.end(); ++it) {
                                           ^
In file included from /usr/include/gtest/gtest.h:1929:0,
                 from alxr_test.cpp:1:
alxr_test.cpp:20:18: ошибка: no match for «operator*» (operand type is «LinkedList::iterator»)
   EXPECT_EQ(exp, *it);
                  ^
alxr_test.cpp: В функции-члене «virtual void AlxrTest_ForeachLoop_Test::TestBody()»:
alxr_test.cpp:28:5: ошибка: no match for «operator+=» (operand types are «LinkedList» and «int»)
   a += i;
     ^
alxr_test.cpp:31:18: ошибка: no match for «operator++» (operand type is «LinkedList::iterator»)
  for(int value : a) {
                  ^
alxr_test.cpp:31:18: ошибка: no match for «operator*» (operand type is «LinkedList::iterator»)
alxr_test.cpp: В функции-члене «virtual void AlxrTest_InsertInTheMiddle_Test::TestBody()»:
alxr_test.cpp:39:5: ошибка: no match for «operator+=» (operand types are «LinkedList» and «int»)
  (a += 1) += 3;
     ^
alxr_test.cpp:41:2: ошибка: no match for «operator++» (operand type is «LinkedList::iterator»)
  ++it; // it points to "3"
  ^
In file included from /usr/include/gtest/gtest.h:1929:0,
                 from alxr_test.cpp:1:
alxr_test.cpp:43:15: ошибка: no match for «operator*» (operand type is «LinkedList::iterator»)
  EXPECT_EQ(2, *new_it);
               ^
alxr_test.cpp:46:27: ошибка: no match for «operator++» (operand type is «LinkedList::iterator»)
  for (const auto & value: a) {
                           ^
alxr_test.cpp:46:27: ошибка: no match for «operator*» (operand type is «LinkedList::iterator»)
alxr_test.cpp: В функции-члене «virtual void AlxrTest_RemoveFromTheMiddle_Test::TestBody()»:
alxr_test.cpp:54:6: ошибка: no match for «operator+=» (operand types are «LinkedList» and «int»)
  ((a += 1) += 2) += 3;
      ^
alxr_test.cpp:56:2: ошибка: no match for «operator++» (operand type is «LinkedList::iterator»)
  ++it; // it points to "2"
  ^
In file included from /usr/include/gtest/gtest.h:1929:0,
                 from alxr_test.cpp:1:
alxr_test.cpp:58:15: ошибка: no match for «operator*» (operand type is «LinkedList::iterator»)
  EXPECT_EQ(3, *next_it);
               ^
alxr_test.cpp:60:27: ошибка: no match for «operator++» (operand type is «LinkedList::iterator»)
  for (const auto & value: a) {
                           ^
alxr_test.cpp:60:27: ошибка: no match for «operator*» (operand type is «LinkedList::iterator»)
In file included from link.cpp:1:0:
Header.h:24:35: предупреждение: passing NULL to non-pointer argument 1 of «LinkedList::iterator::iterator(value_type)» [-Wconversion-null]
   iterator * a = new iterator(NULL);
                                   ^
link.cpp: В функции-члене «LinkedList LinkedList::operator+(LinkedList&)»:
link.cpp:227:31: ошибка: адрес от временной переменной [-fpermissive]
  iterator *tmp = &(this->end());
                               ^
link.cpp:228:33: ошибка: адрес от временной переменной [-fpermissive]
  iterator *cmp = &(other.begin());
                                 ^
link.cpp:231:21: ошибка: адрес от временной переменной [-fpermissive]
  cmp = &(other.end());
                     ^
In file included from main.cpp:1:0:
Header.h:24:35: предупреждение: passing NULL to non-pointer argument 1 of «LinkedList::iterator::iterator(value_type)» [-Wconversion-null]
   iterator * a = new iterator(NULL);
                                   ^
Makefile:10: ошибка выполнения рецепта для цели «a.out»
make: *** [a.out] Ошибка 1
```
