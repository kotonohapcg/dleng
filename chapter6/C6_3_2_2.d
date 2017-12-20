import std.stdio;

class Widget{
	this(uint height){
		//他のコンストラクタに処理を流す
		this(1, height);
	}
	//他のコンストラクタの中からのみ呼び出しが許される。
	//-->??
	this(uint width, uint height){
		this.width = width;
		this.height = height;
	}
}
