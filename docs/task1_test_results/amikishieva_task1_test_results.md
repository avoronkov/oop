# Compile
```
g++ -Wall -std=c++14 -o a.out list2.cpp main.cpp
list2.cpp: In copy constructor «List::iterator::iterator(const List::iterator&)»:
list2.cpp:47:47: ошибка: нет декларации «memcpy» в этой области видимости
  memcpy(list_node, it.list_node, sizeof(Node*));
                                               ^
list2.cpp: В функции-члене «List& List::operator+=(const List&)»:
list2.cpp:511:18: ошибка: invalid initialization of non-const reference of type «List&» from an rvalue of type «List»
  return ((*this) + (other));
                  ^
Makefile:10: ошибка выполнения рецепта для цели «a.out»
make: *** [a.out] Ошибка 1
```
