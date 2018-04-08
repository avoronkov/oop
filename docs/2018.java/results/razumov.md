# Разумов Антон

## Подсчёт фраз (Задача 1). Ok.

**Код** - Ok.

- [Ok] Имена классов в java должны начинаться с большой буквы (`lab1`)

- [Ok] Ошибка регистра файла:
```
    [javac] /home/alxr/study/2018.java/razumov/j_lab1/src/main/lab1.java:9: error: class Lab1 is public, should be declared in a file named Lab1.java
    [javac] public class Lab1 {
    [javac]        ^
    [javac] 1 error
```

- [Ok] `bf` и `reader` не закроются в случае исключения в `text2word`

- [Ok] Если `bf` и `reader` закрываются в finally, то их не надо закрывать в `try{}`

- [Ok] Не работает для случая
```
Если имя файла не указано, то программа также работает со стандартным потоком ввода.
```

- [Ok] добавить build.xml

- [Ok] Не работают команды `ant jar` и `ant test`

**Тесты** - Ok.

- [Ok] Неправильные импорты. Вместо `org.junit.jupiter.api.Test` должен использоваться `org.junit.Test`,
а вместо `org.junit.jupiter.api.Assertions.*` - `org.junit.Assert.*` (+ соответствующие классы и методы должны быть публичными).

- [Ok] `import static org.junit.Assert.*;` вместо `import static org.junit.jupiter.api.Assertions.assertEquals;`

- [Ok] Для автоматического запуска тестов класс `TestForText` нужно переименовать в `TextTest`. (В остальном тесты работают)

- [Ok] Нужно поменять в build.xml:
```
-                <fileset dir="${test.src.dir}" includes="**/*Test.java" />
+                <fileset dir="${test.build.dir}" includes="**/*Test.class" />
```

[repo](https://bitbucket.org/a_razumov_oop/lab3/overview)

(проверено 8 апреля)

## Stack PL (Задача 2). В процессе.

**Код** - в процессе.

- Для загрузки операции нужно использовать `Class.forName`

- [Ok] build.xml не поддерживает команды `ant jar` и `ant test`

- Не работает программа `5 dup [ print 1 - dup ]`:
```
Error: unknown command
Error: unknown command
Error: unknown command
Error: unknown command
Error: unknown command
Error: not enough values in stack
Error: unknown command
Error: unknown command
Error: unknown command
Error: unknown command
```

**Тесты** - нет.

[repo](https://bitbucket.org/a_razumov_oop/j_lab2)

(проверено 8 арпеля)
