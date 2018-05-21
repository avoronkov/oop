# Бастрыкина Алена

## Подсчёт фраз (Задача 1). В процессе.

**Код** - в процессе.

- [Ok] Следует разбить `main()` на отдельные методы.

- Добавить работу со стандартными потоками ввода и вывода.

- В выводе количество раз, которое встречается фраза должно быть в скобках, т.е.:
```
three one (3) 
one two (2)
```

**Тесты** - в процессе.

- Поправить build.xml
```
-    <property name="test.src.dir"   value="src"/>
+    <property name="test.src.dir"   value="tests"/>

-                <fileset dir="${test.build.dir}" includes="**/*Test.class" />
+                <fileset dir="${test.build.dir}" includes="**/*Tests.class" />
```

- Добавить аннотацию `@Test` к `getCountedPhrasesTest()`

[repo](https://bitbucket.org/bastrykina_oop/words)

(проверено 21 мая)

## Stack PL (Задача 2). В процессе.

**Код** - в процессе.

- [Ok] Добавить `build.xml` в проект ([подробности](/2018.java/task2/#ant-buildxml).

- При запуске без аргументов нужно работать со стандартным потоком ввода.

**Тесты** - в процессе.

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
