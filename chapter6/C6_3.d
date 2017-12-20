import std.stdio, std.math;
class Test {
	double a = 0.4;
	int b;
	this(int b) {
		this.b = b;
	}
}

//thisを使ってコンストラクタを定義したので、デフォルトで用意されていた
//コンストラクタは使用できなくなる
//試しに、assertをそのままにしてみると、元デフォルトのTestではコンパイル時に既に通らない。
//つまり、assertはおろかコンパイルの時点で既に弾かれてる。

unittest
{
	auto t = new Test;
	auto r = new Test(5);
	assert(t.a == 0.4 && isNaN(t.b));
}