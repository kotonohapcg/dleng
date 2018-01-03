import std.stdio;
//フィート＋インチで表現された身長をcm単位へ変換する

void main(){
	immutable inchesPerFoot = 12;
	immutable cmPerInch = 2.54;

	//output by loop
	foreach(feet;5 .. 7){
		foreach(inches;0 .. inchesPerFoot){
			writeln(feet, "'", inches, "''\t", (feet*inchesPerFoot+inches)*cmPerInch);
		}
	}
}