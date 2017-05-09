# Жук Юлия

## Подсчёт слов (Задача 1). ОК.

**Код** - ОК.

- Примитивные типы инициализируются значениями по умолчанию, поэтому следующий код лишний:
```Java
    words = 0;
	chars = 0;
	lines = 0;
```

- [ОК] `Scanner in = new Scanner("");` - создание сканера не нужно, достаточно `Scanner in;`.

- [ОК] Для закрытия `Scanner in` следует использовать try-with-resources или закрывать внутри блока finally.


- [ОК] Лишний временный массив, можно просто `results = act.result();`
```Java
	int[] temp_arr = new int[3];
	temp_arr = act.results();
	for (int j = 0; j < 3; j++) {
		results[j] = temp_arr[j];
	}   
```

- [ОК] В `public int[] results()` вместо массива было бы лучше использовать объект с тремя именоваными полями.
Еще можно разбить этот метод на три, для получения каждого значения по-отдельности.

**Тесты** - ОК.

## Фабрика (Задача 2). В процессе.

**Фабрика** - в процессе.

- Импортировать классы из `java.lang` (например, `java.lang.String`) необязательно - они импортируются автоматически.

- Классы `BodyStock`, `CarStock`, `EngineStock` можно заменить одним обобщенным классом `Stock<T>`.

- Лишние импорты:
```Java
import jdk.nashorn.internal.ir.RuntimeNode;
import jdk.nashorn.internal.runtime.regexp.JoniRegExp;
import org.junit.runner.Request;
```

- При разборе конфигурационного файла следует полагаться на ключи, стоящие слева от `=`, а не на порядковый номер строки.

- Метод `stop()` - deprecated. Следует использовать `interrupt()`.

**ClassLoader** - пока нет.
