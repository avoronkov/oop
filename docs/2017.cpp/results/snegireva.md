# Снегирева Екатерина

## Подсчёт фраз (Задача 1). Ok.

**Код** - Ok.

- [Ok] Программа не завершается при чтении стандартного потока ввода

- [Ok] Поток ввода (istream) не всегда поддерживает "перематывание" (т.е. метод `seekg`)

- [Ok] Фразы выводятся в порядке возрастания, а не убывания частоты.

- [Ok] `using namespace std` в заголовочном файле.

- [Ok] Следует удалить лишнюю папку (`lab1`) из репозитория.

- [Ok] Функции `mapinvector` и `comp` должны принимать аргументы по константным ссылкам.

**Тесты** - Ok.

- [Ok] Добавить тесты на `func`.

[repo](https://bitbucket.org/snegireva_oop/spyair_kek)

## Календарь (Задача 2). Ok.

**Код** - Ok.

- [Ok] Методы-селекторы (`get_year`, `get_month` ...) должны быть `const`.

- [Ok] Методы `add_years`, `add_months` ... должны быть `const`.

- [Ok] Оператор присваивания `operator=` должен принимать аргумент по константной ссылке.

**Тесты** - Ok.

- [Ok]
```C++
testmain.cpp:15:5:   required from here
/usr/include/gtest/gtest.h:1448:16: error: no match for ‘operator==’ (operand types are ‘const month’ and ‘const int’)
   if (expected == actual) {
       ~~~~~~~~~^~~~~~~~~
```

[repo](https://bitbucket.org/snegireva_oop/spyair_kek)

(проверено 3 дек)

## Морской бой (Задача 3). В процессе.

**Код** - в процессе.

- Техническое поражение:
```C++
player:       snegireva:
####.###.#    ...###.###
.........#    ..........
#......#..    ....#.#..#
X.........    #........#
X.........    #.....#...
..........    ..........
#.........    ....#....#
#.#....#..    .........#
....#.....    ..........
##........    .####....O
        18    20
2018/01/08 21:21:49 [snegireva (2)] Lose!
(Already shoot at A 3)
```

- Техническое поражение:
```
snegireva: player:
..####....    ####.###.#
..........    .........#
#....#....    #....#....
#.........    X.#.......
...#......    X.........
...O......    O.........
.......#.#    #....#....
....#....#    #.........
#.........    ....#.....
#..###.###    ##........
        20    18

2018/01/21 14:30:02 [snegireva (1)] ShootCmd
2018/01/21 14:30:02 [snegireva (1)] GetShot
2018/01/21 14:30:02 Status = 1
2018/01/21 14:30:05 [snegireva (1)] Close
2018/01/21 14:30:05 [player (2)] Close
player (2) is winner!
(snegireva (1) timeout)
```

[repo](https://bitbucket.org/snegireva_oop/spyair_kek)

(проверено 21 янв)

## Схема (Задача 4). В процессе.

**Код** Ok.

- Кажется, вместо `template<> void get<void>()` должно быть просто `void get()`:
```C++
In file included from /home/alxr/study/2017.cpp/snegireva_oop/lab4/main.cpp:1:0:
/home/alxr/study/2017.cpp/snegireva_oop/lab4/header.h:24:15: error: explicit specialization in non-namespace scope ‘class Any’
     template <>
               ^
/home/alxr/study/2017.cpp/snegireva_oop/lab4/header.h:25:23: error: template-id ‘get<void>’ in declaration of primary template
      void get<void>() const{
                       ^
```

**Демонстрация** - в процессе.

[repo](https://bitbucket.org/snegireva_oop/spyair_kek)

(проверено 21 янв)
