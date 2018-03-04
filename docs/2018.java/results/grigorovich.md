# Григорович Артём

## Подсчёт фраз (Задача 1). Ok.

**Код** - в процессе.

- Переусложненная логика по разбору аргументов, много дублирования кода.

- Не работает в случае:
```
Если имя файла не указано, то программа также работает со стандартным потоком ввода
```

- В случае аргумента `-`:
```
java.util.NoSuchElementException: No line found
    at java.util.Scanner.nextLine(Scanner.java:1540)
    at com.company.Main.streamToString(Unknown Source)
    at com.company.Main.main(Unknown Source)
```

- В случае, если задан один из аргументов `-n` или `-m`:
```
Format error!
```

**Тесты** - нет.

[repo](https://bitbucket.org/grigorovich_oop/tasks)

(проверено 4 марта)
