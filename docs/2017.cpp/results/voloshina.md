# Волошина Анастасия

## Подсчёт фраз (Задача 1). Ok.

**Код** - Ok.

- [Ok] Вместо `strcmp` следует использовать сравнение `std::string`.

- [Пожелание] Можно не разделять объявление и инициализацию переменных внутри функции, т.е.
```
// вместо
map <string, int> frequency_table;
frequency_table = text2phrases (input_stream, length_of_phrase);
// можно писать 
map<string, int> frequency_table = text2phrases (input_stream, length_of_phrase);
```

- [Ok] Коллекции в функции `sortphrases`, `print_result` следует передавать по константной ссылке.

- [Ok] `main.cpp:2:21: fatal error: compare.h: No such file or directory`

- [Ok] Фразы упорядочены по возрастанию, а не по убыванию частоты.

**Тесты** - Ok.

[repo](https://bitbucket.org/voloshina_oop/c-labs/overview)

## Календарь (Задача 2). В процессе.

**Код** - Ok.

- [Ok] Определение функции `string my_to_string (int val)` конфликтует со стандартной функцией `std::to_string`, т.к. используется `using namespace std;`

- [Ok] Оператор `++` не может применяться к временной переменной. Лучше использовать `+ 1`.
`Date.cpp:501:55: error: lvalue required as increment operand
     month = static_cast<Month>(static_cast<int>(month)++);`

**Тесты** - в процессе.

- Некоторые тесты упали:

```C++
[ RUN      ] AddersTests.Test2
/home/alxr/study/2017.cpp/voloshina/lab-2/Tests.cpp:116: Failure
Expected equality of these values:
  22
  test_date.getHrs()
    Which is: 21
/home/alxr/study/2017.cpp/voloshina/lab-2/Tests.cpp:118: Failure
Expected equality of these values:
  20
  test_date.getDay()
    Which is: 21
/home/alxr/study/2017.cpp/voloshina/lab-2/Tests.cpp:121: Failure
Expected equality of these values:
  month
    Which is: Feb
  test_date.getMonth()
    Which is: Nov
/home/alxr/study/2017.cpp/voloshina/lab-2/Tests.cpp:123: Failure
Expected equality of these values:
  988
  test_date.getYear()
    Which is: 898
[  FAILED  ] AddersTests.Test2 (0 ms)
[ RUN      ] TestDate_3.FormatDateTest_4
/home/alxr/study/2017.cpp/voloshina/lab-2/Tests.cpp:198: Failure
Expected equality of these values:
  Date_3.formatDate(input)
    Which is: "7YYY-M-17 22h:33m:44s"  
  output
    Which is: "7-M-17 22h:33m:44s"
[  FAILED  ] TestDate_3.FormatDateTest_4 (1 ms)
/home/alxr/study/2017.cpp/voloshina/lab-2/Tests.cpp:180: Failure
Expected equality of these values:
  Date_1.formatDate(input)
    Which is: "1YYY-Feb-3 04:05:06"
  output
    Which is: "1-Feb-3 04:05:06"
[  FAILED  ] TestDate_1.FormatDateTest_1 (0 ms)
```

[repo](https://bitbucket.org/voloshina_oop/lab-2/overview)

(Проверено 8 янв)

## Морской бой (Задача 3). В процессе.

**Код** - в процессе.

[repo](https://bitbucket.org/voloshina_oop/lab-3/overview)

(Проверено 8 янв)
