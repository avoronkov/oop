# Яшин Артём

## Подсчёт слов (Задача 1). Ok.

**Код** - Ok.

- [Ok] Два main-класса - `src/nsu/g16203/yashin/lab1/Main.java`, `nsu/g16203/yashin/lab1.java`

- [Ok] Код `main()` должен быть разбит на отдельные методы.

**Тесты** - Ok.

[repo](https://bitbucket.org/yashin_oop/jlab1)

(проверено 11 марта)


## Стек (Задача 2). В процессе.

**Код** - в процессе.

- NPE:
```
/jlab2$ java -jar build/jar/Lab.jar
5 2 + print

Exception in thread "main" java.lang.ExceptionInInitializerError
        at nsu.g16203.yashin.lab2.Main.lines2Chain(Unknown Source)
        at nsu.g16203.yashin.lab2.Main.main(Unknown Source)
Caused by: java.lang.NullPointerException
        at java.io.Reader.<init>(java.base@9-internal/Reader.java:78)
        at java.io.InputStreamReader.<init>(java.base@9-internal/InputStreamReader.java:72)
        at nsu.g16203.yashin.lab2.Factory.<init>(Unknown Source)
        at nsu.g16203.yashin.lab2.Factory.<clinit>(Unknown Source)
        ... 2 more
```

- [Ok] Отсутствует build.xml

- Поправить build.xml, подробности [здесь](/2018.java/task2/#ant-buildxml)

- `import jdk.jshell.spi.ExecutionControlProvider;` не нужен и мешает компиляции.

**Тесты** - Ok.

[repo](https://bitbucket.org/yashin_oop/jlab2)

(проверено 30 апреля)

## Сапер (Задача 3). В процессе.

**Text UI** - ок.

**GUI** - в процессе.

[repo](https://bitbucket.org/yashin_oop/jlab3)

(проверено 16 апр)
