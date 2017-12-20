import std.stdio;
/*
staticを付けることによって、そのデータが実行スレッド当たり1つずつの実体を持つ、
ということを表している。
データは共有されるので、関数内/外を問わず値を保持する。
様々なスコープ内に置いたとしても、可視性の影響のみで、ストレージは不変。
-ストレージ==記憶域なので、staticを付けた変数が対象になる、と解釈している。
*/
//private int zerosと同等の記述
static int zeros;

void fun(double x){
	static double minInput;
	static bool minInputInitialized;
	if(!minInputInitialized){
		minInput = x;
		minInputInitialized = true;
	} else {
		if(x < minInput) minInput = x;
	}
}

