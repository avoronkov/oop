# Compile
```
g++ -Wall -std=c++14 -lgtest -o gtest alxr_test.cpp iter.cpp my_lst.cpp cell.cpp main.cpp test.cpp
```

# Run tests
```
The begining of the programm.
[==========] Running 27 tests from 3 test cases.
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
[----------] 5 tests from AlxrTest (1 ms total)

[----------] 5 tests from Cell
[ RUN      ] Cell.Init
[       OK ] Cell.Init (0 ms)
[ RUN      ] Cell.get_value
test.cpp:20: Failure
Value of: 0
Expected: c1.get_value()
Which is: -1081635912
[  FAILED  ] Cell.get_value (0 ms)
[ RUN      ] Cell.set_next_and_prev
[       OK ] Cell.set_next_and_prev (0 ms)
[ RUN      ] Cell.get_next_and_prev
[       OK ] Cell.get_next_and_prev (0 ms)
[ RUN      ] Cell.operatorEQEQ
[       OK ] Cell.operatorEQEQ (0 ms)
[----------] 5 tests from Cell (0 ms total)

[----------] 17 tests from LinkedList
[ RUN      ] LinkedList.Init
[       OK ] LinkedList.Init (0 ms)
[ RUN      ] LinkedList.Push_back_and_back
[       OK ] LinkedList.Push_back_and_back (0 ms)
[ RUN      ] LinkedList.Push_fornt_and_front
[       OK ] LinkedList.Push_fornt_and_front (0 ms)
[ RUN      ] LinkedList.Selectors
[       OK ] LinkedList.Selectors (0 ms)
[ RUN      ] LinkedList.size
[       OK ] LinkedList.size (0 ms)
[ RUN      ] LinkedList.empty
[       OK ] LinkedList.empty (0 ms)
[ RUN      ] LinkedList.pop_back
[       OK ] LinkedList.pop_back (0 ms)
[ RUN      ] LinkedList.pop_front
[       OK ] LinkedList.pop_front (0 ms)
[ RUN      ] LinkedList.Removing
[       OK ] LinkedList.Removing (0 ms)
[ RUN      ] LinkedList.clear
[       OK ] LinkedList.clear (0 ms)
[ RUN      ] LinkedList.begin_end
[       OK ] LinkedList.begin_end (0 ms)
[ RUN      ] LinkedList.erase
[       OK ] LinkedList.erase (0 ms)
[ RUN      ] LinkedList.insert
[       OK ] LinkedList.insert (0 ms)
[ RUN      ] LinkedList.EQoperators
[       OK ] LinkedList.EQoperators (1 ms)
[ RUN      ] LinkedList.incoperators
[       OK ] LinkedList.incoperators (0 ms)
[ RUN      ] LinkedList.operatorPLEQ
[       OK ] LinkedList.operatorPLEQ (0 ms)
[ RUN      ] LinkedList.operatorEQ
[       OK ] LinkedList.operatorEQ (0 ms)
[----------] 17 tests from LinkedList (1 ms total)

[----------] Global test environment tear-down
[==========] 27 tests from 3 test cases ran. (3 ms total)
[  PASSED  ] 26 tests.
[  FAILED  ] 1 test, listed below:
[  FAILED  ] Cell.get_value

 1 FAILED TEST
```

# Замечания

`LinkedList::iterator::operator==` реализован неправильно.
