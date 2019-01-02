import std.stdio, std.string, std.algorithm;

void main() {
    uint[string] freqs;
    foreach(line; stdin.byLine()) {
        foreach(word; splitter(strip(line))) {
            ++freqs[word.idup];
        }
    }

    //出現回数
    foreach(key, value; freqs) {
        writefln("%6u\t%s", value, key);
    }
}
