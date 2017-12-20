import std.stdio;

/*
in引数を指定してやることで、被指定側の引数は書き換え不可能になる。
被引数側のデータであれば、たとえ多次元配列であったとしても
同様に書き換えを不可能にする。
*/

void fun(in int[][] data){
	data[5] = data[0];
	data[5][0] = data[0][5];
}

unittest
{
	assert(data[5] == 42);
}