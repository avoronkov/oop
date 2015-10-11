# Compile
```
g++ -Wall -std=c++14 -lgtest -lgtest_main -o a.out alxr_test.cpp LinkedList.cpp
LinkedList.cpp: В функции-члене «void LinkedList::push_front(const value_type&)»:
LinkedList.cpp:473:10: предупреждение: неиспользуемая переменная «t» [-Wunused-variable]
    Elem *t = Tail->Next;
          ^
LinkedList.cpp: В функции-члене «LinkedList::iterator LinkedList::erase(LinkedList::iterator)»:
LinkedList.cpp:314:1: предупреждение: control reaches end of non-void function [-Wreturn-type]
 }
 ^

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
[----------] 5 tests from AlxrTest (2 ms total)

[----------] Global test environment tear-down
[==========] 5 tests from 1 test case ran. (5 ms total)
[  PASSED  ] 5 tests.
```
