//TDPL P184 6.3.4 解体とメモリの開放
//"~this"によってデストラクタを作る。
//しかし、多くの場合classは適切にカプセル化された資源を使うので出番は無い。

import core.stdc.stdlib;

class Buffer{
	private void* data;
	//constructor
	this(){
		data=malloc(1024);
	}

	//destructor
	~this(){
		free(data);
	}
	//other.
}