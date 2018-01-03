//TDPL P190 6.4 メソッドと継承

import std.stdio;

unittest{
	auto c = new Contact;
	auto current = new Friend;


	assert(c.bgColor() == "Gray");
	writeln(c.bgColor());
	assert(current.bgColor() == "LightGreen");
	writeln(current.bgColor());
}

class Contact{
	string bgColor(){
		return "Gray";
	}
}

//Contactクラスを継承させたFriendクラスを作成
class Friend : Contact{
	string currentBgColor = "LightGreen";
	string currentReminder;
	
	override string bgColor(){
		return currentBgColor;
	}

	string reminder(){
		return currentReminder;
	}
}
/* unittestの結果
kotonoha@kotonoha:~/dleng/chapter6$ dmd -main -unittest C6_4.d
kotonoha@kotonoha:~/dleng/chapter6$ ./C6_4
Gray
LightGreen
*/