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

**Код** - в процессе.

- Определение функции `string my_to_string (int val)` конфликтует со стандартной функцией `std::to_string`, т.к. используется `using namespace std;`

- Оператор `++` не может применяться к временной переменной. Лучше использовать `+ 1`.
`Date.cpp:501:55: error: lvalue required as increment operand
     month = static_cast<Month>(static_cast<int>(month)++);`

[repo](https://bitbucket.org/voloshina_oop/lab-2/overview)

(Проверено 21 дек)
