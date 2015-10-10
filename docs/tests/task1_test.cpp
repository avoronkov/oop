#include <gtest/gtest.h>
#include "LinkedList.h"

TEST(AlxrTest, CheckSize) {
	const int size = 23;
	LinkedList a;
	for (int i = 0; i < size; i++) {
		a += i;
	}
	ASSERT_EQ(size, a.size());
}

TEST(AlxrTest, ForIteratorLoop) {
	LinkedList a;
	for (int i = 0; i < 5; i++) {
		a += i;
	}
	int exp = 0;
	for (auto it = a.begin(); it != a.end(); ++it) {
		EXPECT_EQ(exp, *it);
		exp++;
	}
}

TEST(AlxrTest, ForeachLoop) {
	LinkedList a;
	for (int i = 0; i < 5; i++) {
		a += i;
	}
	int exp = 0;
	for(int value : a) {
		EXPECT_EQ(exp, value);
		exp++;
	}
}

TEST(AlxrTest, InsertInTheMiddle) {
	LinkedList a;
	(a += 1) += 3;
	auto it = a.begin(); // it points to "1"
	++it; // it points to "3"
	auto new_it = a.insert(it, 2);
	EXPECT_EQ(2, *new_it);

	int exp = 1;
	for (const auto & value: a) {
		EXPECT_EQ(exp, value);
		exp++;
	}
}

TEST(AlxrTest, RemoveFromTheMiddle) {
	LinkedList a;
	((a += 1) += 2) += 3;
	auto it = a.begin(); // it points to "1"
	++it; // it points to "2"
	auto next_it = a.erase(it);
	EXPECT_EQ(3, *next_it);
	int exp = 1;
	for (const auto & value: a) {
		EXPECT_EQ(exp, value);
		exp += 2;
	}
}

#ifdef ADVANCED_TESTS

TEST(AlxrTestAdvanced, InitializerListConstructor) {
	LinkedList a{1, 2, 3, 4};
	int exp = 1;
	for (const auto & value: a) {
		EXPECT_EQ(exp, value);
		exp++;
	}
}

#endif
