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

## Морской бой (Задача 3). Ok.

**Код** - В процессе.

- [Ok] Функция `main` не найдена.

- [Пожелание] Лучше не вызывать внешние программы, а использовать например фнкцию `sleep`:
```C++
sh: 1: pause: not found
```

- [Ok] Техническое поражение:
```
galios vs bastrykina : winner is galios (error: invalid x coordinate: @)
razumov vs bastrykina : winner is razumov (error: Already shoot at F 9)
yashin vs bastrykina : winner is yashin (error: invalid y coordinate: 11)
```

- [Ok] Техническое поражение:
```
bastrykina: player:
..#O..O#..    .......#..
..#....#..    ..##.#....
..#.......    ..........
#....#..#.    O.OO.O.OOX
...O....#.    ..##......
..#..O..O.    .....##...
#O#.#.....    ..........
#.#..O..O#    OOOO#O.X.X
#.#O...O..    .......X.X
...O..##..    ####...X.#
        20    14

2018/01/21 13:25:16 Status = 1
2018/01/21 13:25:16 [bastrykina (1)] GetShot
2018/01/21 13:25:16 [bastrykina (1)] GetShot: <nil> (invalid y coordinate: 10)
```

[repo](https://bitbucket.org/bastrykina_oop/battleships)

(проверено 21 янв)

## Жизнь (Задача 4). Ok.

**Код** - Ok.

- [Ok] Ошибка компиляции. (Вместо `std::exception` можно использовать `std::runtime_error`)
```
bastrykina/game_of_life/Game.cpp:85:65: error: no matching function for call to ‘std::exception::exception(const char [21])’
   if (!in.is_open()) throw std::exception("Cannot open the file");
                                                                 ^
```
**Демонстрация** - Ok

[repo](https://bitbucket.org/bastrykina_oop/game_of_life)

(проверено 24 янв)
