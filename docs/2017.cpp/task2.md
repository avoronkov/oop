# Задача 2. Григорианский календарь

## Основные требования.

[Условие.](https://docs.google.com/viewer?a=v&pid=sites&srcid=ZGVmYXVsdGRvbWFpbnxuZ3Vvb3B8Z3g6NTBiODNlMTQxZDk3NTExMw)

## Дополнительные (обязательные) требования.

- Реализация класса `DateInterval` - обязательна (часть 2б).

- В классе `Calendar` перегрузить операторы:
```C++
class Calendar {
	// ...
	Calendar  operator+ (const DateInterval &) const;
	Calendar& operator+=(const DateInterval &);
	Calendar  operator- (const DateInterval &) const;
	Calendar& operator-=(const DateInterval &);
	// ...
};
```

- Реализовать префиксный и постфиксный инкремент/декремент для класса `Calendar`^
```C++
class Calendar {
	// ...
	Calendar& operator++(); // prefix increment
	Calendar  operator++(int); // postfix increment
	Calendar& operator--(); // prefix decrement
	Calendar  operator--(int); // postfix decrement
	// ...
};
```
