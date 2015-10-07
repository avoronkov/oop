# Compile
```
g++ -Wall -std=c++14 -lgtest -lgtest_main -o a.out alxr_test.cpp laba2.cpp
laba2.cpp: В функции-члене «LinkedList::iterator& LinkedList::iterator::operator++()»:
laba2.cpp:70:29: предупреждение: присваивание, используемое как логическое выражение, рекомендуется  [-Wparentheses]
     if (this->element = NULL)
                             ^
laba2.cpp: В функции-члене «LinkedList::iterator LinkedList::iterator::operator++(int)»:
laba2.cpp:86:35: предупреждение: присваивание, используемое как логическое выражение, рекомендуется  [-Wparentheses]
     if (this->element->Next = NULL)
                                   ^
laba2.cpp: В функции-члене «LinkedList::iterator& LinkedList::iterator::operator--()»:
laba2.cpp:101:35: предупреждение: присваивание, используемое как логическое выражение, рекомендуется  [-Wparentheses]
     if (this->element->Prev = NULL)
                                   ^
laba2.cpp: В функции-члене «LinkedList::iterator LinkedList::iterator::operator--(int)»:
laba2.cpp:117:39: предупреждение: присваивание, используемое как логическое выражение, рекомендуется  [-Wparentheses]
         if (this->element->Prev = NULL)
                                       ^
laba2.cpp: В функции-члене «LinkedList::iterator& LinkedList::iterator::operator++()»:
laba2.cpp:75:1: предупреждение: control reaches end of non-void function [-Wreturn-type]
 }
 ^
laba2.cpp: В функции-члене «LinkedList::iterator LinkedList::iterator::operator++(int)»:
laba2.cpp:91:1: предупреждение: control reaches end of non-void function [-Wreturn-type]
 }
 ^
laba2.cpp: В функции-члене «LinkedList::iterator& LinkedList::iterator::operator--()»:
laba2.cpp:106:1: предупреждение: control reaches end of non-void function [-Wreturn-type]
 }
 ^
laba2.cpp: В функции-члене «LinkedList::iterator LinkedList::iterator::operator--(int)»:
laba2.cpp:122:1: предупреждение: control reaches end of non-void function [-Wreturn-type]
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
Running main() from gtest_main.cc
[==========] Running 5 tests from 1 test case.
[----------] Global test environment set-up.
[----------] 5 tests from AlxrTest
[ RUN      ] AlxrTest.CheckSize
*** Error in `./a.out': double free or corruption (fasttop): 0x082e5340 ***
======= Backtrace: =========
/lib/libc.so.6[0x4bf4a503]
/lib/libc.so.6[0x4bf52e8a]
/lib/libc.so.6(cfree+0x50)[0x4bf56530]
./a.out[0x804aa83]
./a.out[0x80492bd]
/lib/libgtest.so.0(_ZN7testing8internal35HandleExceptionsInMethodIfSupportedINS_4TestEvEET0_PT_MS4_FS3_vEPKc+0x5a)[0xb777581a]
/lib/libgtest.so.0(_ZN7testing4Test3RunEv+0xf7)[0xb7769367]
/lib/libgtest.so.0(_ZN7testing8TestInfo3RunEv+0x134)[0xb77694d4]
/lib/libgtest.so.0(_ZN7testing8TestCase3RunEv+0xcf)[0xb77695cf]
/lib/libgtest.so.0(_ZN7testing8internal12UnitTestImpl11RunAllTestsEv+0x285)[0xb77698f5]
/lib/libgtest.so.0(_ZN7testing8internal35HandleExceptionsInMethodIfSupportedINS0_12UnitTestImplEbEET0_PT_MS4_FS3_vEPKc+0x5a)[0xb7775dba]
/lib/libgtest.so.0(_ZN7testing8UnitTest3RunEv+0x5d)[0xb7769c0d]
/lib/libgtest_main.so.0(main+0x43)[0xb7733663]
/lib/libc.so.6(__libc_start_main+0xf5)[0x4bef7715]
./a.out[0x80490a1]
======= Memory map: ========
08048000-0804e000 r-xp 00000000 08:11 5506475    /mnt/data/private/dev/c++11/assembla/kambalina_alena/task1/1.1/a.out
0804e000-0804f000 r--p 00005000 08:11 5506475    /mnt/data/private/dev/c++11/assembla/kambalina_alena/task1/1.1/a.out
0804f000-08050000 rw-p 00006000 08:11 5506475    /mnt/data/private/dev/c++11/assembla/kambalina_alena/task1/1.1/a.out
082e0000-08305000 rw-p 00000000 00:00 0          [heap]
4beba000-4bedb000 r-xp 00000000 08:08 3095       /usr/lib/ld-2.21.so
4bedb000-4bedc000 r--p 00020000 08:08 3095       /usr/lib/ld-2.21.so
4bedc000-4bedd000 rw-p 00021000 08:08 3095       /usr/lib/ld-2.21.so
4bedf000-4c0a5000 r-xp 00000000 08:08 6175       /usr/lib/libc-2.21.so
4c0a5000-4c0a7000 r--p 001c6000 08:08 6175       /usr/lib/libc-2.21.so
4c0a7000-4c0a8000 rw-p 001c8000 08:08 6175       /usr/lib/libc-2.21.so
4c0a8000-4c0ab000 rw-p 00000000 00:00 0
4c0ad000-4c0f9000 r-xp 00000000 08:08 6179       /usr/lib/libm-2.21.so
4c0f9000-4c0fa000 r--p 0004b000 08:08 6179       /usr/lib/libm-2.21.so
4c0fa000-4c0fb000 rw-p 0004c000 08:08 6179       /usr/lib/libm-2.21.so
4c0fd000-4c115000 r-xp 00000000 08:08 6192       /usr/lib/libpthread-2.21.so
4c115000-4c117000 r--p 00017000 08:08 6192       /usr/lib/libpthread-2.21.so
4c117000-4c118000 rw-p 00019000 08:08 6192       /usr/lib/libpthread-2.21.so
4c118000-4c11a000 rw-p 00000000 00:00 0
4c34e000-4c36a000 r-xp 00000000 08:08 6574       /usr/lib/libgcc_s-5.1.1-20150618.so.1
4c36a000-4c36b000 r--p 0001b000 08:08 6574       /usr/lib/libgcc_s-5.1.1-20150618.so.1
4c36b000-4c36c000 rw-p 0001c000 08:08 6574       /usr/lib/libgcc_s-5.1.1-20150618.so.1
4c886000-4c9fb000 r-xp 00000000 08:08 6789       /usr/lib/libstdc++.so.6.0.21
4c9fb000-4ca00000 r--p 00175000 08:08 6789       /usr/lib/libstdc++.so.6.0.21
4ca00000-4ca01000 rw-p 0017a000 08:08 6789       /usr/lib/libstdc++.so.6.0.21
4ca01000-4ca04000 rw-p 00000000 00:00 0
b772f000-b7733000 rw-p 00000000 00:00 0
b7733000-b7734000 r-xp 00000000 08:08 127353     /usr/lib/libgtest_main.so.0.0.0
b7734000-b7735000 r--p 00000000 08:08 127353     /usr/lib/libgtest_main.so.0.0.0
b7735000-b7736000 rw-p 00001000 08:08 127353     /usr/lib/libgtest_main.so.0.0.0
b7736000-b7785000 r-xp 00000000 08:08 127351     /usr/lib/libgtest.so.0.0.0
b7785000-b7786000 r--p 0004e000 08:08 127351     /usr/lib/libgtest.so.0.0.0
b7786000-b7787000 rw-p 0004f000 08:08 127351     /usr/lib/libgtest.so.0.0.0
b77a5000-b77a8000 rw-p 00000000 00:00 0
b77a8000-b77aa000 r--p 00000000 00:00 0          [vvar]
b77aa000-b77ab000 r-xp 00000000 00:00 0          [vdso]
bfae3000-bfb05000 rw-p 00000000 00:00 0          [stack]
[1]    14495 abort (core dumped)  ./a.out >> kambalina_task1_test_results.txt 2>&1
```
