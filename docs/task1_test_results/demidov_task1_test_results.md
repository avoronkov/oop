# Compile
```
g++ -Wall -std=c++14 -lgtest -o a.out alxr_test.cpp link.cpp main.cpp
```

# Run tests
Программа зависает при вызове метода `clear()` из деструктора.
```
Running main() from gtest_main.cc
[==========] Running 4 tests from 1 test case.
[----------] Global test environment set-up.
[----------] 4 tests from AlxrTest
[ RUN      ] AlxrTest.CheckSize
```
