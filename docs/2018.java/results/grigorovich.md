# Григорович Артём

## Подсчёт фраз (Задача 1). Хорошо.

**Код** - Хорошо.

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

- В `streamToString` чтение должно осуществляться до конца файла:
```
while (sc.hasNext()) {
	text.append(sc.nextLine()).append(" ");
}
```

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

## Сапер (Задача 3). В процессе.

**GUI** - в процессе.

- Ошибка при запуске GUI:
```
$ java -jar build/jar/Lab.jar                                                                                 (06-17 14:26)
Enter the game mode(gui/text):
gui
Enter the field size and mines amount in format: x y amount
10 10 10
Exception in thread "main" java.lang.StringIndexOutOfBoundsException: begin -1, end 56, length 56
        at java.lang.String.checkBoundsBeginEnd(java.base@9-internal/String.java:3119)
        at java.lang.String.substring(java.base@9-internal/String.java:1907)
        at nsu.g16203.grigorovich.View.buildGUI(Unknown Source)
        at nsu.g16203.grigorovich.Main.main(Unknown Source)
```

[repo](https://bitbucket.org/grigorovich_oop/tasks)

(проверено 17 июня)

## Фабрика (Задача 4). Ok.

## Чат (Задача 5). Ok.
