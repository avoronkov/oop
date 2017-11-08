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

- Похоже, в репозитории lab2 код первой лабораторной.

[repo](https://bitbucket.org/voloshina_oop/lab-2/overview)
