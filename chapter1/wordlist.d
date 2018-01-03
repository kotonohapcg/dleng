import std.stdio, std.string, std.algorithm;

void main(){
	size_t[string] dictionary;

	//loop
	foreach(line;stdin.byLine()){
		//文を単語へと分割し、個々の単語を語彙表へ追加する
		//参考:
		foreach(word;splitter(strip(line))){
			
		}
	}
}