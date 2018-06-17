# Галиос Максим

## Подсчёт фраз (Задача 1). Хорошо.

**Код** - в процессе.

- [Ok] Добавить build.xml в проекте.

- [Ok] Вместо javafx.util.Pair следует использовать java.util.Map.Entry

- Не работает чтение со стандартного потока ввода при запуске без аргументов.

**Тесты** - Ok.

[repo](https://bitbucket.org/galios_oop/javarep/src/master/)

(проверено 28 мая)

## StackPL (Задача 2). Хорошо.

**Код** - хорошо.

**Тесты** - почти прошли:
```
test:
    [junit] Running CalcMainTest
    [junit] Testsuite: CalcMainTest
    [junit] Tests run: 1, Failures: 1, Errors: 0, Skipped: 0, Time elapsed: 0.18 sec
    [junit] Tests run: 1, Failures: 1, Errors: 0, Skipped: 0, Time elapsed: 0.18 sec
    [junit]
    [junit] Testcase: main(CalcMainTest):       FAILED
    [junit] expected:<5.0[
    [junit] 4.0
    [junit] 3.0
    [junit] 2.0
    [junit] 1.0
    [junit] ]> but was:<5.0[
    [junit] 4.0
    [junit] 3.0
    [junit] 2.0
    [junit] 1.0]
    [junit] >
    [junit] junit.framework.AssertionFailedError: expected:<5.0[
    [junit] 4.0
    [junit] 3.0
    [junit] 2.0
    [junit] 1.0
    [junit] ]
    [junit] > but was:<5.0[
    [junit] 4.0
    [junit] 3.0
    [junit] 2.0
    [junit] 1.0]
    [junit] >
    [junit]     at CalcMainTest.main(Unknown Source)
    [junit]     at java.base/jdk.internal.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
    [junit]     at java.base/jdk.internal.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)
    [junit]     at java.base/jdk.internal.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
```

[repo](https://bitbucket.org/galios_oop/javarep/src/master/)

# Сапер. (Задача 3). Хорошо.

**GUI** - Ok.

**Код** - отсутствует build.xml.

[repo](https://bitbucket.org/galios_oop/javarep/src/master/)
