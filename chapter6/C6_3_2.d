import std.stdio;

class Widget{
	this(uint height){
		this.width = 1;
		this.height = height;
	}

	this(uint width, uint height){
		this.width = width;
		this.height = height;
	}
	//.
	//.
	//.
	//このままでは大量のコンストラクタを書くのは辛い！

}
