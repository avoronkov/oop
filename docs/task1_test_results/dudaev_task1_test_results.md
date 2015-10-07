# Compile
```
g++ -Wall -fpermissive -std=c++14 -lgtest -o a.out LinkedList.cpp Source.cpp alxr_test.cpp Test.cpp
In file included from LinkedList.cpp:1:0:
Header.h:204:7: предупреждение: избыточная квалификация «LinkedList::» элемента «empty» [-fpermissive]
  bool LinkedList::empty() const; //return 1, if list is emty
       ^
LinkedList.cpp: В функции-члене «LinkedList::iterator LinkedList::insert(LinkedList::iterator, const value_type&)»:
LinkedList.cpp:123:12: предупреждение: неиспользуемая переменная «NewNode» [-Wunused-variable]
  NodeBase *NewNode = new NodeBase(before.node, value);
            ^
In file included from Source.cpp:1:0:
Header.h:204:7: предупреждение: избыточная квалификация «LinkedList::» элемента «empty» [-fpermissive]
  bool LinkedList::empty() const; //return 1, if list is emty
       ^
Source.cpp: В функции «int main(int, char**)»:
Source.cpp:5:17: предупреждение: ignoring return value of «int RUN_ALL_TESTS()», declared with attribute warn_unused_result [-Wunused-result]
  RUN_ALL_TESTS();
                 ^
In file included from alxr_test.cpp:2:0:
Header.h:204:7: предупреждение: избыточная квалификация «LinkedList::» элемента «empty» [-fpermissive]
  bool LinkedList::empty() const; //return 1, if list is emty
       ^
In file included from Test.cpp:1:0:
Header.h:204:7: предупреждение: избыточная квалификация «LinkedList::» элемента «empty» [-fpermissive]
  bool LinkedList::empty() const; //return 1, if list is emty
       ^
```
# Run tests
```
[==========] Running 12 tests from 2 test cases.
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

[----------] 7 tests from ListTest
[ RUN      ] ListTest.Front_and_Back
[       OK ] ListTest.Front_and_Back (0 ms)
[ RUN      ] ListTest.CreateList
[       OK ] ListTest.CreateList (1 ms)
[ RUN      ] ListTest.FrontandBack
[       OK ] ListTest.FrontandBack (0 ms)
[ RUN      ] ListTest.BeginandEnditPlusitMin
[       OK ] ListTest.BeginandEnditPlusitMin (0 ms)
[ RUN      ] ListTest.remove
[       OK ] ListTest.remove (0 ms)
[ RUN      ] ListTest.push_pop
[       OK ] ListTest.push_pop (0 ms)
[ RUN      ] ListTest.boolev
[       OK ] ListTest.boolev (0 ms)
[----------] 7 tests from ListTest (1 ms total)

[----------] Global test environment tear-down
[==========] 12 tests from 2 test cases ran. (1 ms total)
[  PASSED  ] 12 tests.
```
