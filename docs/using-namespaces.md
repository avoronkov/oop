Как правильно использовать пространства имён?
=============================================

Как избавиться от "std::"
-------------------------

Вопрос, который часто задают те, кто начинает программировать на C++, звучит так:
"как избежать постоянного написания в коде префикса std:: при использовании стандартной библиотеки?".
То же самое касается и других пространств имён (namespaces).

Рассмотрим пример:
```C++
#include <iostream>
#include <string>

int main() {
	std::string hello = "hello world!";
	std::cout << hello << std::endl;
	return 0;
}
```

Нетрудно заметить, что префикс `std::` встречается 3 раза внутри двух строчек кода.

Самый простой (и самый нерекомендуемый) способ - это `using namespace`:
```C++
#include <iostream>
#include <string>

using namespace std;

int main() {
	string hello = "hello world!";
	cout << hello << endl;
	return 0;
}
```

Чем плох этот способ? Тем, что импортировав все имена из `std` мы потеряли возможность понять,
откуда взялось то или иное имя (для этого придётся воспользоваться помощью IDE, или просматривать используемые заголовочные файлы).

Способ получше состоит в том, чтобы импортировать отдельные имена, а не весь namespace целиком:
```C++
#include <iostream>
#include <string>

using std::string;
using std::cout;
using std::endl;

int main() {
	string hello = "hello world!";
	cout << hello << endl;
	return 0;
}
```

Теперь видно, что `string` - это на самом деле `std::string`, то есть Строка из стандартной библиотеки C++.
Анализировать и поддерживать такой гораздо проще.

Должен заметить, что если какое-то имя встречается в файле достаточно редко,
то нет никакой проблемы в том, чтобы использовать имя класса вместе с неймспейсом -
это всего-лишь лишние 5 символов :)

Алиасы для пространств имён
---------------------------

Не все имена пространств имён короткие и трёхсимвольные - иногда встречаются весьма длинные (в том числе и вложенные).
Например:
```C++
#include <iostream>
#include <boost/program_options.hpp>

int main(int argc, char **argv) {
	boost::program_options::options_description desc("Allowed options");
	desc.add_options()
		("help", "produce help message")
	;

	boost::program_options::variables_map vm;
	boost::program_options::store(boost::program_options::parse_command_line(argc, argv, desc), vm);
	boost::program_options::notify(vm);    

	if (vm.count("help")) {
		std::cout << desc << "\n";
	}	
	return 0;
}
```

В этом случае хорошим решением будет использование *алиасов* для пространств имён:
```C++
#include <iostream>
#include <boost/program_options.hpp>

namespace po = boost::program_options;

int main(int argc, char **argv) {
	po::options_description desc("Allowed options");
	desc.add_options()
		("help", "produce help message")
	;

	po::variables_map vm;
	po::store(po::parse_command_line(argc, argv, desc), vm);
	po::notify(vm);    

	if (vm.count("help")) {
		cout << desc << "\n";
	}	
	return 0;
}
```

Нетрудно заметить, что алиас - это просто другое имя пространства имён, которое можно использовать наравне с оригинальным.
