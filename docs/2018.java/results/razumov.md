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

## Stack PL (Задача 2). Ok.

**Код** - Ok.

- [Ok] Для загрузки операции нужно использовать `Class.forName`

- [Ok] build.xml не поддерживает команды `ant jar` и `ant test`

- [Ok] Не работает программа `5 dup [ print 1 - dup ]`:
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

- [Ok] Нужно включить properties в jar, compile (примерно так):
```
    <target name="compile">
        <mkdir dir="${classes.dir}"/>
        <fileset dir="${src.dir}">
            <include name="**/*.txt"/>
        </fileset>
        <javac srcdir="${src.dir}" destdir="${classes.dir}">
            <classpath refid="classpath.test"/>
        </javac>
    </target>

    <target name="jar" depends="compile">
        <mkdir dir="${jar.dir}"/>
        <jar destfile="${jar.path}" basedir="${classes.dir}">
            <manifest>
                <attribute name="Main-Class" value="${main.class}"/>
            </manifest>
            <fileset dir="${src.dir}">
                <include name="**/*.txt"/>
            </fileset>
        </jar>
    </target>
```

- [Ok] Ошибка в build.xml
```
-    <property name="JLab2.class"  value="main.Jlab2" />
+    <property name="JLab2.class"  value="main.JLab2" />
```

**Тесты** - Ok.

- [Ok] Исправить в build.xml
```
-    <property name="test.src.dir"   value="src"/>
+    <property name="test.src.dir"   value="tests"/>
```

[repo](https://bitbucket.org/a_razumov_oop/j_lab2)

(проверено 16 апр)

## Сапёр (Задача 3). В процессе.

*Text* - Ok.

*GUI* - Ok.

- [Ok] Программа падает при попытке запустить GUI:
```
Welcome to mvc.Minesweeper game!
v1.0

Here're the commands to use:
 - New Game
 - About
 - Records
 - Exit
Please, write one of them:
New Game
Please, choose - Text or GUI:
GUI
Please, enter size of field and number of mines:
10 10 10
#
# A fatal error has been detected by the Java Runtime Environment:
#
#  SIGSEGV (0xb) at pc=0x00007f7fccfd1009, pid=8128, tid=8129
#
# JRE version: OpenJDK Runtime Environment (9.0) (build 9-internal+0-2016-04-14-195246.buildd.src)
# Java VM: OpenJDK 64-Bit Server VM (9-internal+0-2016-04-14-195246.buildd.src, mixed mode, tiered, compressed oops, g1 gc, linux-amd64)
# Problematic frame:
# C  [libjava.so+0x1d009]  JNU_GetEnv+0x19
#
# No core dump will be written. Core dumps have been disabled. To enable core dumping, try "ulimit -c unlimited" before starting Java again
#
# An error report file with more information is saved as:
# /home/alxr/study/2018.java/razumov/minesweeper/hs_err_pid8128.log
#
# If you would like to submit a bug report, please visit:
#   http://bugreport.java.com/bugreport/crash.jsp
# The crash happened outside the Java Virtual Machine in native code.
# See problematic frame for where to report the bug.
#
[1]    8128 abort      java -jar build/jar/Lab.jar
```

[repo](https://bitbucket.org/a_razumov_oop/minesweeper)

(проверено 14 мая)
