//TPDPL P91
//なぜか91ページのコードが動かない
//ので、先に92ページのソースコードを
//作ることにする。

import std.stdio;

//unittest
//{
//	assert();
//}


void main(){
	auto array = new double[uniform(1, 128)];
	foreach(i; 0 .. array.length){
		array[i] = uniform(0.0, 1.0);
	}
}