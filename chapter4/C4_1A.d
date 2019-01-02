import std.stdio, std.string, std.algorithm;

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

    /*
    //use ref id -> 要素を直接参照
    auto array = new double[uniform(1, 128)];
    foreach(ref element; 0 .. array.length) {
        element = uniform(0.0, 1.0);
    }
    */

    foreach(value; 0 .. array.length) {
        writeln(value);
    }

}