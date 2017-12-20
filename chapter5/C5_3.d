import std.stdio;
/*
while式中で行うのは配列のスライスである。そこで、スライスと
任意の型で実行する形式を取ることで、find関数が
より汎用的になる。
*/

T[] find(T)(T[] haystack, T needle){
	while(haystack.length > 0 && haystack[0] != needle){
		haystack = haystack[1 .. $;
	}
	return haystack;
}
unittest
{
	//ジェネリックな内容をテストする。
	double[] d =[1.5, 2.4];
	assert(find(d, 1.0) == null);
	assert(find(d, 1.5) == d);
	steing[] s =["one", "two"];
	assert(find(s, "two") == ["two"]);
}