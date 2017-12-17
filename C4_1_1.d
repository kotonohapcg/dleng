import std.stdio;
import std.string;

void main(){
	auto array = new int[100];
	auto copy  = array.dup;
	assert(array !is copy);
	assert(array == copy);

	string[] s;
	assert(s is null);
	assert(s == null);


}