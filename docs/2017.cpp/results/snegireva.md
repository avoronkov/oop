# Снегирева Екатерина

## Подсчёт фраз (Задача 1). Ok.

**Код** - Ok.

- [Ok] Программа не завершается при чтении стандартного потока ввода

- [Ok] Поток ввода (istream) не всегда поддерживает "перематывание" (т.е. метод `seekg`)

- [Ok] Фразы выводятся в порядке возрастания, а не убывания частоты.

- [Ok] `using namespace std` в заголовочном файле.

- [Ok] Следует удалить лишнюю папку (`lab1`) из репозитория.

- [Ok] Функции `mapinvector` и `comp` должны принимать аргументы по константным ссылкам.

**Тесты** - Ok.

- [Ok] Добавить тесты на `func`.

[repo](https://bitbucket.org/snegireva_oop/spyair_kek)

## Календарь (Задача 2). Ok.

**Код** - Ok.

- [Ok] Методы-селекторы (`get_year`, `get_month` ...) должны быть `const`.

- [Ok] Методы `add_years`, `add_months` ... должны быть `const`.

- [Ok] Оператор присваивания `operator=` должен принимать аргумент по константной ссылке.

**Тесты** - Ok.

- [Ok]
```C++
testmain.cpp:15:5:   required from here
/usr/include/gtest/gtest.h:1448:16: error: no match for ‘operator==’ (operand types are ‘const month’ and ‘const int’)
   if (expected == actual) {
       ~~~~~~~~~^~~~~~~~~
```

[repo](https://bitbucket.org/snegireva_oop/spyair_kek)

(проверено 3 дек)

## Морской бой (Задача 3). В процессе.

**Код** - в процессе.

[repo](https://bitbucket.org/snegireva_oop/spyair_kek)

(проверено 19 дек)
