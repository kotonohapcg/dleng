//まだ途中
import std.stdio;

//T[] find(T)(T[] haystack, T needle){
//	while(haystack.length > 0 && haystack[0] != needle){
//		haystack = haystack[1 .. $;
//	}
//	return haystack;
//}


/*
元の状態(P136)ではエラーになる。原因は、
上記の様なfind()が定義されているとき、
Tは同じ型でなければならないからだ。
*/
//double[] a = [1.0, 2.5, 2.0, 3.4];
//a  = find(a, 2);

//修正版
T[] find(T, E)(T[] haystack, E needle){
	while(haystack.length > 0 && haystack[0] != needle){
		haystack = haystack[1 .. $];
	}
	return haystack;
}

double[] a = [1.0, 2.5, 2.0, 3.4];
assert(a[0] == 1.0);