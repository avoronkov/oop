# Воробьева Анжелика

## Подсчёт слов (Задача 1). В процессе.

**Код** - ОК.

- [ОК] `br.close()` в методе `analyseStream()` сделает также close на `InputStreamReader stream`.
То есть, `stream.close()` в методе main - лишний.
С другой стороны, лучше и понятнее, когда ресурс открывается и закрывается в одной функции, например:
```
try(BufferedReader br = new BufferedReader(new FileReader(fileNames.get(i)))) {
	counter.analyseStream(br);
	...
}
```

- Если в качестве имена файла указан `-`, не производится стение с консоли.

**Тесты** - ОК.

## Тетрис (Задача 3). ОК.

**GUI** - ОК

## Чат (Задача 4). В процессе.

**Object serialization chat** - ОК.

**XML chat** - пока нет.
