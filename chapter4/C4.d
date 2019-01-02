import std.stdio, std.string, std.algorithm, std.random;

void main() {
    int[] array1 = new int[20];
    //more simple
    auto arr = new int[20];

    //use uniform()"(std.random)"
    //non-use ref id
    auto array = new double[uniform(1, 128)];
    foreach(i; 0 .. array.length) {
        array[i] = uniform(0.0, 1.0);
    }
    
    writeln(array1.length);
    writeln(arr.length);
    writeln(array.length);
    assert(array1.length == 20);
    assert(arr.length == 20);
    assert(array.length == 20);

}

/*
output example::

kotonoha@LAPTOP-FBRM3VSM:/mnt/c/Users/tukud/dleng/chapter4$ ./C4
20
20
47  //length change every
core.exception.AssertError@C4.d(20): Assertion failure
----------------
??:? _d_assertp [0xc62684e1]
??:? _Dmain [0xc6256863]
*/