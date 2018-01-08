import std.stdio;

class Contact{
    string bgColor(){
        return "";
    }
}

class Friend : Contact{
    override string bgColor () {
        return "LightGreen";
    }
}

unittest{
    Contact c = new Friend;
    assert(c.bgColor() == "LightGreen");
}