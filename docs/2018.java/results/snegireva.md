# Снегирева Екатерина

## Подсчёт фраз (Задача 1). Ok.

**Код** - Ok.

- [ok] Сортировка должна быть в обратном порядке (от самых частых, к менее частым)

**Тесты** - нет.

[repo](https://bitbucket.org/snegireva_oop/spyair_lol/src/master/)

(проверено 10 мая)

## Stack PL (Задача 2). Ok.

**Код** - Ok.

- [ok] Падение при запуске без аргументов:
```
1. cycle print
java -jar Lab.jar < ./testdata/input01.txt
Exception in thread "main" java.lang.NullPointerException
        at java.io.Reader.<init>(java.base@9-internal/Reader.java:78)
        at java.io.InputStreamReader.<init>(java.base@9-internal/InputStreamReader.java:72)
        at java.util.Scanner.<init>(java.base@9-internal/Scanner.java:563)
        at Calculator.Factory.<init>(Unknown Source)
        at Calculator.Calculator.solve(Unknown Source)
        at Calculator.Calculator.calculate(Unknown Source)
        at Calculator.Main.main(Unknown Source)
[!] test 1 failed: exit code = 1
```

**Тесты** - нет

[repo](https://bitbucket.org/snegireva_oop/spyair_lol/src/master/)

(проверено 10 мая)

## Сапёр (Задача 3). Ok.

*Text UI* - Ok.

- [Ok] Падает на `HARD` с `java.lang.IndexOutOfBoundsException: Index 480 out-of-bounds for length 480`

- [ok] Отсутствует файл `src/minesweeper/View.java`

- [ok] Отсутсвуют картинки в репозитории.

- [Пожелание] Имена классов должны начинаться с большой буквы :)

*GUI* - Ok.

- [Пожелание] Копировать картинки в build.xml:
```
         <javac srcdir="${test.src.dir}" destdir="${test.build.dir}" includeantruntime="false">
             <classpath refid="classpath.test"/>
         </javac>
+       <copy todir="${test.build.dir}">
+           <fileset dir="${test.src.dir}">
+               <exclude name="**/*.java"/>
+           </fileset>
+       </copy>
     </target>
```

[repo](https://bitbucket.org/snegireva_oop/spyair_lol/src/master/)

(проверено 12 июня)

## Задача 4 (Фабрика). Ok.

**Код** - В процессе.

- [Ok] В `Storage.java` следует использовать паттерн `wait/notify` для синхронизации.

[repo](https://bitbucket.org/snegireva_oop/spyair_lol/src/master/)

(проверено 16 июня)

## Задача 5 (Чат). Ok.

**Код** - OK.

- [Ok] Отсутсвует `Message.java` в репозитории.

[repo](https://bitbucket.org/snegireva_oop/spyair_lol/src/master/)

(проверено 16 июня)
