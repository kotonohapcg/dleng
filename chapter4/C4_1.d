//TPDPL P91

import std.stdio;

//create dynamic array [20]
int[] array = new int[20];
//or
//create dynamic array by auto

auto x = array[5];
array[7] = 42;

unittest
{
	assert(x == 0);
	assert(array[7] == 42);
}