# Бастрыкина Алена

## Подсчёт фраз (Задача 1). Ok.

**Код** - Ok.

- [Ok] Коллекции в функции `words_to_counted_phrases`, `map_to_phrase_data` следует передавать по константным ссылкам во избежание лишнего копирования.

**Тесты** - Ok.

[repo](https://bitbucket.org/bastrykina_oop/phrases)


## Календарь (Задача 2). В процессе.

**Код** - в процессе.

- Тип `Month` лучше реализовать при помощи [enum class](http://www.learncpp.com/cpp-tutorial/4-5a-enum-classes/)

- Методы `get_year`, `get_month` ... должны быть `const`.

- [Пожелание] После определения методов/функций `;` не нужна:
```
unsigned int Date::get_year() {
    return year;
} // <- 
```

**Тесты** - нет.

[repo](https://bitbucket.org/bastrykina_oop/calendar/overview)
