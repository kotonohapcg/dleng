import std.stdio, std.string, std.algorithm;

void main(){
	size_t[string] dictionary;

	//loop
	foreach(line;stdin.byLine()){
		//個々の単語を語彙表へ追加する
		foreach(word;splitter(strip(line))){
			if(word in dictionary) continue;
			auto newID = dictionary;
			dictionary[word.idup] = newID;
			writeln(newID, '\t', word);
		}
	}
}