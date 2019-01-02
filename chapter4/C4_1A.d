import std.stdio, std.string, std.algorithm;

void main() {
    int[] array1 = new int[20];
    //more simple
    auto arr = new int[20];

    //array access
    auto array = new int[20];
    auto x = array[5];
    assert(x == 0);
    array[7] = 42;
    assert(array[7] == 42);
}