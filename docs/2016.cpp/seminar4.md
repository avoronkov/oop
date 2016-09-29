# Семинар 4 (23.09.2016)

## Комментарии к задача "Тритсет"

### Триты

Для реализации значений тритов разумно использовать __перечисления__ , которые в новых стандартах C++ можно реализовать через [enum classes](http://en.cppreference.com/w/cpp/language/enum).

Например:
```C++
	Trit t = Trit::T;
	std::cout << t; // output: "T"
```

### Базовые операции.

- Создание, модификация, информация о контейнере.

```C++
	TritSet ts; // Пустой контейнер: []
	ts.set(3, Trit::T); // ts = [U, U, U, T]
	cout << ts.length(); // 4
	ts.set(5, Trit::F); // ts = [U, U, U, T, U, F]
	cout << ts; // output: ...T.F
	cout << ts.get(5); // F
```

- Сравнение, присваивание.

```C++
	TritSet a;
	TritSet b;
	TritSet c;
	a.set(2, Trit::T);
	b = a;
	cout << (a == b); // true
	cout << (a != c); // true
```

- Инициализация (списки инициализации).

```C++
	TritSet a = {Trit::T, Trit::F, Trit::U, TritT};
	cout << a; // TF.T
	cout << a.length(); // 4
```

### Покомпонентные операции.

```C++
	TritSet a = {Trit::T, Trit::U, Trit::F};
	TritSet b = {Trit::T, Trit::T, Trit::U};
	TritSet c = (a & b);
	cout << c; // T.F
	c |= TritSet{Trit::F, Trit::F, Trit::T};
	cout << c; // T.T
```

### "Продвинутые" операции.

- Индексация элементов

```C++
	TritSet a;
	a[3] = Trit::T;
	cout << a[2];
```

### Сигнатура некоторых методов.

```C++
class TritSet {
public:
	TritSet();
	TritSet(int size);
	TritSet(const TritSet &); // конструктор копирования
	~TritSet();

	int length() const;

	Trit get(int index) const;
	void set(int index, const Trit & t) const;

	TritSet & operator=(const TritSet &); // оператор присваивания

	// покомпонентные операции
	TritSet operator&(const TritSet &) const;
	TritSet & operator&=(const TritSet &);

	// Индексация
	??? operator[](int i);
};
```

