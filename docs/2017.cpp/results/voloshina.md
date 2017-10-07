# Волошина Анастасия

## Подсчёт фраз (Задача 1). В процессе.

**Код** - в процессе.

- Вместо `strcmp` следует использовать сравнение `std::string`.

- [Пожелание] Можно не разделять объявление и инициализацию переменных внутри функции, т.е.
```
// вместо
map <string, int> frequency_table;
frequency_table = text2phrases (input_stream, length_of_phrase);
// можно писать 
map<string, int> frequency_table = text2phrases (input_stream, length_of_phrase);
```

- Коллекции в функции `sortphrases`, `print_result` следует передавать по константной ссылке.

- `main.cpp:2:21: fatal error: compare.h: No such file or directory`

- Фразы упорядочены по возрастанию, а не по убыванию частоты.

**Тесты** - Ok.

[repo](https://bitbucket.org/voloshina_oop/c-labs/overview)
