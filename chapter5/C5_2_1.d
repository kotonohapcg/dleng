import std.stdio;

//void bump(ref int x){
//	++x;
//}

int bump( int x){
	return ++x;
}

unittest
{
	int x = 1;
	bump(bump(x));
	//bump(bump())なので、x+=1→x+=1になってるはず
	assert(x == 1);
}