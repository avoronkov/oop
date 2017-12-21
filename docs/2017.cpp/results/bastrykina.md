# Бастрыкина Алена

## Подсчёт фраз (Задача 1). Ok.

**Код** - Ok.

- [Ok] Коллекции в функции `words_to_counted_phrases`, `map_to_phrase_data` следует передавать по константным ссылкам во избежание лишнего копирования.

**Тесты** - Ok.

[repo](https://bitbucket.org/bastrykina_oop/phrases)


## Календарь (Задача 2). Ok.

**Код** - Ok.

- [Ok] Тип `Month` лучше реализовать при помощи [enum class](http://www.learncpp.com/cpp-tutorial/4-5a-enum-classes/)

- [Ok] Методы `get_year`, `get_month` ... должны быть `const`.

- [Ok] Пожелание После определения методов/функций `;` не нужна:
```
unsigned int Date::get_year() {
    return year;
} // <- 
```

- [Ok] Пожелание: Один из операторов `operator+`, `operator+=` можно реализовать через другой.

**Тесты** - Ok.

[repo](https://bitbucket.org/bastrykina_oop/calendar/overview)

(проверено 21 дек)

## Морской бой (Задача 4). В процессе.

**Код** - в процессе.

- Функция `main` не найдена.

[repo](https://bitbucket.org/bastrykina_oop/battleships)

(проверено 21 дек)
