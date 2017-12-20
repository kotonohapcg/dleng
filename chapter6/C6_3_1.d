import std.stdio, std.math;

class Test {
	double a = 0.4;
	int b;
	this(int b){
		this.b = b;
	}
	//generate default constructor
	//全てのフィールドが暗黙的に初期化される
	this() {}
}
//この記述はアウト
/*
class MoGo {
	void fun(){
		//thisを別のオブジェクトにバインドし直す
		this = new MoGo;
	}
}
*/