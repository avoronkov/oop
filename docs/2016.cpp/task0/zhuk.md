# Жук Юлия.

## Начало (Задача 0). ОК

**Код** - ОК. `extractField()` - ОК, `filter()` работает только с `std::ostream & out` и не возвращает `stringstream`.

**Тесты** - ОК

### Пожелания

`main()` по условиям задачи не должен выводить промежуточный результат `filter`, только конечный результат `filter + extractField`

## Тритсет (Задача 1). В процессе.

**Код** - ОК, но есть нюансы:

- Возвращаемое значение `operator=` должно быть `Trit&` - ОК.

**Тесты** - Падает один тест:
```
[ RUN      ] IniList.IniList
TRIT_TEST.cpp:184: Failure
Value of: a[3]
  Actual: 2
Expected: Unknown
[  FAILED  ] IniList.IniList (0 ms)
```

Пожелания:

- не забывать про `const`, особенно в константных методах.
