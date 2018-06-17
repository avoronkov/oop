# Бастрыкина Алена

## Подсчёт фраз (Задача 1). Ok.

**Код** - Ok.

- [Ok] Следует разбить `main()` на отдельные методы.

- [Ok] Добавить работу со стандартными потоками ввода и вывода.

- [Ok] В выводе количество раз, которое встречается фраза должно быть в скобках, т.е.:
```
three one (3) 
one two (2)
```

**Тесты** - Ok.

- [Ok] Поправить build.xml
```
-    <property name="test.src.dir"   value="src"/>
+    <property name="test.src.dir"   value="tests"/>

-                <fileset dir="${test.build.dir}" includes="**/*Test.class" />
+                <fileset dir="${test.build.dir}" includes="**/*Tests.class" />
```

- [Ok] Добавить аннотацию `@Test` к `getCountedPhrasesTest()`

[repo](https://bitbucket.org/bastrykina_oop/words)

(проверено 21 мая)

## Stack PL (Задача 2). Ok.

**Код** - Ok.

- [Ok] Добавить `build.xml` в проект ([подробности](/2018.java/task2/#ant-buildxml).

- При запуске без аргументов нужно работать со стандартным потоком ввода.

- Добавить `config.csv` как ресурс.
```
Файл конфигурации должен
храниться рядом с файлом класса-фабрики, и загружаться в фабрику с помощью
Class.getResourceAsStream()
```

**Тесты** - Ok.

- Поправить build.xml для тестов:
```
-    <property name="test.src.dir"   value="src"/>
+    <property name="test.src.dir"   value="tests"/>

-                <fileset dir="${test.build.dir}" includes="**/*Test.class" />
+                <fileset dir="${test.build.dir}" includes="**/*Tests.class" />
```

- Ошибка в тесте:
```
    [junit] Testcase: ExecutorTest1(Tests):     FAILED
    [junit] expected:<[]> but was:<[5
    [junit] ]>
    [junit] junit.framework.AssertionFailedError: expected:<[]> but was:<[5
    [junit] ]>
    [junit]     at Tests.ExecutorTest1(Unknown Source)
```

[repo](https://bitbucket.org/bastrykina_oop/stackpl)

(проверено 21 мая)

## Змейка (Задача 3). Ок.

## Фабрика (Задача 4). Ок.
