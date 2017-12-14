//TDPL P129
import std.stdio;

int[] find(int[] haystack, int needle){
	while(haystack.length > 0 && haystack[0] != needle){
		haystack = haystack[1 .. $];
	}
	return haystack;
}

//writing unittest
unittest{
	int[] a = [];
	assert(find(a, 5));
	a = [1, 2, 3];
	assert(find(a, 0) == []);
	assert(find(a, 1).length == 3);
	assert(find(a, 2).length == 2);
	assert(a[0 .. $ - find(a, 3).length] == [1, 2]);

}