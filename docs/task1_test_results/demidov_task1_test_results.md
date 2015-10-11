# Compile
```
g++ -Wall -std=c++14 -lgtest -lgtest_main -o gtest alxr_test.cpp link.cpp
link.cpp: В функции-члене «LinkedList::iterator LinkedList::erase(LinkedList::iterator, LinkedList::iterator)»:
link.cpp:151:22: ошибка: invalid initialization of non-const reference of type «LinkedList::iterator&» from an rvalue of type «LinkedList::iterator»
   begin = this->erase(begin);
                      ^
link.cpp:12:24: замечание:   initializing argument 1 of «LinkedList::iterator& LinkedList::iterator::operator=(LinkedList::iterator&)»
 LinkedList::iterator & LinkedList::iterator::operator=(LinkedList::iterator & other)
                        ^
link.cpp: В функции-члене «LinkedList LinkedList::operator+(const LinkedList&) const»:
link.cpp:277:14: предупреждение: неиспользуемая переменная «tmp» [-Wunused-variable]
  LinkedList* tmp = new LinkedList;
              ^
Makefile:10: ошибка выполнения рецепта для цели «gtest»
```

# Замечания

`LinkedList::iterator::operator=` реализован неправильно, его аргументом должен быть `const iterator &`,
а не `iterator &`; возвращаться должна ссылка на `*this`, а не `other`.
