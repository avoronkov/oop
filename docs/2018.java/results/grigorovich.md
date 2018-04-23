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

- [X] `FileInputStream fstr` не закрывается.

- `fstr` создается и тут же закрывается:
```
                    try {
                        fstr = new FileInputStream(new File(ar[0]));
                    } catch (Exception ex) {
                        ex.printStackTrace();
                    }   
                    finally {
                        if (fstr != null) {
                            try {
                                fstr.close();
                            } catch (IOException e) {
                                e.printStackTrace();
                            }   
                        }   
                    }   
```

- [Ok] Команды `ant jar` и `ant test` не работают.

**Тесты** - Ok.

[repo](https://bitbucket.org/grigorovich_oop/tasks)

(проверено 7 апр)

## Stack PL (Задача 2). В процессе.

**Код** - в процессе.

- Неправильное чтение из Scanner'а:
```
         String temp;
-         while ((temp = sc.nextLine()).length() > 0){
+         while (sc.hasNext()) {
+                 temp = sc.nextLine();
             text.append(temp).append(" ");
```

**Тесты** - в процессе.

- Ошибка в build.xml
```
	<batchtest>
-       <fileset dir="${test.src.dir}" includes="**/*Test.java" />
+       <fileset dir="${test.build.dir}" includes="**/*Test.class" />
	</batchtest>
```

- ошибка в тестах
```
[junit] java.lang.NullPointerException
[junit]     at nsu.g16203.grigorovich.OperationMaker.init(Unknown Source)
[junit]     at nsu.g16203.grigorovich.MainTest.interpret(Unknown Source)
```
[repo](https://bitbucket.org/grigorovich_oop/tasks)

(проверено 7 апр)
