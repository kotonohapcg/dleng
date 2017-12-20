import std.stdio;
import std.string;

void main(){
	auto array = new int[100];
	auto copy  = array.dup;
	assert(array !is copy);
	assert(array == copy);

	//配列が必ずしも空とは限らない
	string a[] = new string[2];
	//a = new string[2];
	assert(a !is null);
	a = a[0 .. 0];
	assert(a !is null);

	//配列長の取得
	


}