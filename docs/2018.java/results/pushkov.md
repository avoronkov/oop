# Пушков Федор

## Подсчёт фраз (Задача 1). В процессе.

**Код** - в процессе.

- [Ok] `BufferedReader bf` не закрывается (должен использоваться try-with-resource)

- [Ok] `build.xml` отсутствует.

**Тесты** - в процессе.

- Исправить build.xml и MainTest.java для корректного запуска тестов:

```
--- a/build.xml
+++ b/build.xml
@@ -4,7 +4,7 @@
     <property name="classes.dir" value="${build.dir}/classes"/>
     <property name="jar.dir"     value="${build.dir}/jar"/>
 
-    <property name="test.src.dir"   value="src"/>
+    <property name="test.src.dir"   value="tests"/>
     <property name="test.build.dir" value="${build.dir}/test"/>
 
     <property name="lib.dir" value="lib/"/>
diff --git a/tests/MainTest.java b/tests/MainTest.java
index 28e9fbe..f2e7f87 100644
--- a/tests/MainTest.java
+++ b/tests/MainTest.java
@@ -1,14 +1,14 @@
-import org.junit.jupiter.api.Test;
+import org.junit.Test;
 
 import java.util.ArrayList;
 import java.util.HashMap;
 
-import static org.junit.jupiter.api.Assertions.*;
+import static org.junit.Assert.*;
 
-class MainTest {
+public class MainTest {
 
     @Test
-    void getSortedPhrases() {
+    public void getSortedPhrases() {
         HashMap<String, Integer> sortedPhrasesExp = new HashMap<>();
         sortedPhrasesExp.put("lala", 3);
         sortedPhrasesExp.put("ololo",2);
@@ -27,7 +27,7 @@ class MainTest {
 
 
     @Test
-    void getPhrases() {
+    public void getPhrases() {
         ArrayList<String> words = new ArrayList<>();
         words.add("we");
         words.add("all");
@@ -52,9 +52,9 @@ class MainTest {
     }
 
     @Test
-    void isNum() {
+    public void isNum() {
         Main main = new Main();
         assertTrue(main.isNum("123"));
         assertFalse(main.isNum("123abc"));
```

- [X] Тесты написаны на JUnit5. Это допустимо, если в build.xml будут прописаны соответствующие зависимости, и `ant test` исполняет соответствующие тесты.

[repo](https://bitbucket.org/pushkov_oop/lab1_java)

(обновлено 16 июня)

## Stack PL (Задача 2). В процессе.

**Код**

- ant compile (отсутствует Exceptions/?):
```
ant compile                                                      (06-17 15:03)
Buildfile: /home/alxr/study/2018.java/pushkov/lab2_java/build.xml

compile:
    [javac] /home/alxr/study/2018.java/pushkov/lab2_java/build.xml:27: warning: 'includeantruntime' was not set, defaulting to build.sysclasspath=last; set to false for repeatable builds
    [javac] Compiling 15 source files to /home/alxr/study/2018.java/pushkov/lab2_java/build/classes
    [javac] /home/alxr/study/2018.java/pushkov/lab2_java/src/Calc.java:1: error: package Exceptions does not exist
    [javac] import Exceptions.CycleException;
    [javac]                  ^
    [javac] /home/alxr/study/2018.java/pushkov/lab2_java/src/Calc.java:2: error: package Exceptions does not exist
    [javac] import Exceptions.NullStackException;
    [javac]                  ^
```

[repo](https://bitbucket.org/pushkov_oop/lab2_java)

## Сапёр (Задача 3). Хорошо.

[repo](https://bitbucket.org/pushkov_oop/lab3_java)
