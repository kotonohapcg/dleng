//TDPL P152

import std.stdio, std.string, std.algorithm;


int a;
int agopop = 0;

R find(R,T)(R haystack, T needle){
    if(is(typeof(haystack.front != needle) == bool)){
        
        while(haystack.empty > 0 && haystack.front != needle){
            haystack.popfront();
        }
        return haystack;
    }
}


T[] find(T)(T[] haystack, T needle){
    a = haystack[0];
    while(haystack.empty > 0 && haystack.front != needle){
        haystack.popfront();
    }
    return haystack;
}

unittest
{
    
    assert(haystack[0] != agopop);

}