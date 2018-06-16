# Волошина Анастасия

## Подсчёт фраз (Задача 1). Ok.

**Код** - Ok.

- [Ok] Не работают дефолтные значения для `-n` и `-m` (то есть, когда они явно не указаны).

- [Ok] Когда аргументы не указаны, программа должна работать со стандартным потоком ввода.

- Ошибки в build.xml. `src.dir` и `test.src.dir` должны указывать на `src`, так как там корень дерева исходных файлов.
Неправильно указан `Main-Class` для jar.
Неправильный pathelement location для тестов.
```
-    <property name="src.dir"     value="src/classes"/>
+    <property name="src.dir"     value="src/"/>

-    <property name="test.src.dir"   value="src/tests"/>
+    <property name="test.src.dir"   value="src/"/>

-    <property name="main.class"  value="PhrasesCounter" />
+    <property name="main.class"  value="classes.PhrasesCounter" />

-                <attribute name="PhrasesCounter" value="${main.class}"/>
+                <attribute name="Main-Class" value="${main.class}"/>

-                <pathelement location="${test.build.dir}/tests"/>
+                <pathelement location="${test.build.dir}"/>
```

**Тесты** - Ok.

[repo](https://bitbucket.org/voloshina_oop/java)

(проверено 10 марта)

## Stack PL (Задача 2). В процессе.

**Код** - в процессе.

- [Ok] Вместо `javafx.util.Pair` лучше использовать что-то другое (например, написать свой класс Pair).

- Компиляция упала.
```
task2/Operations/Loop.java:3: error:
 package javafx.util does not exist
     [javac] import javafx.util.Pair;
	     [javac]                   ^
```

**Тесты** - в процессе.

[repo](https://bitbucket.org/voloshina_oop/java)

(проверено 23 апреля)
