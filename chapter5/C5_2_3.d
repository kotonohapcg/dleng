import std.stdio;
/*
out引数。ref引数では関数の中身そのものを読み/書きする目的がある。
一方でout引数ではその書き込みのみをやりたいときに使う、というのが
目的になる、と解釈している。
*/

int divrem(int a, int b, int rem){
	assert(b != 0);
	rem = a % b;
	return a/b;
}

unittest
{
	int r;
	int d = divrem(5,2,r);
	assert(d == 2 && r ==1);
}


/*compiling message
kotonoha@kotonoha:~/dleng/chapter5$ dmd -main -unittest C5_2_3.d
kotonoha@kotonoha:~/dleng/chapter5$ ./C5_2_
C5_2_1  C5_2_3
kotonoha@kotonoha:~/dleng/chapter5$ ./C5_2_3
core.exception.AssertError@C5_2_3.d(18): unittest failure
----------------
??:? _d_unittestp [0x77ff96c1]
??:? void C5_2_3.__unittest_C5_2_3_d_14_0() [0x77ff937e]
??:? void C5_2_3.__modtest() [0x77ff938c]
??:? int core.runtime.runModuleUnitTests().__foreachbody2(object.ModuleInfo*) [0x77ffcf0c]
??:? int object.ModuleInfo.opApply(scope int delegate(object.ModuleInfo*)).__lambda2(immutable(object.ModuleInfo*)) [0x77ffc1ee]
??:? int rt.minfo.moduleinfos_apply(scope int delegate(immutable(object.ModuleInfo*))).__foreachbody2(ref rt.sections_elf_shared.DSO) [0x78000a35]
??:? int rt.sections_elf_shared.DSO.opApply(scope int delegate(ref rt.sections_elf_shared.DSO)) [0x78000de0]
??:? int rt.minfo.moduleinfos_apply(scope int delegate(immutable(object.ModuleInfo*))) [0x780009c1]
??:? int object.ModuleInfo.opApply(scope int delegate(object.ModuleInfo*)) [0x77ffc1c5]
??:? runModuleUnitTests [0x77ffcdf0]
??:? void rt.dmain2._d_run_main(int, char**, extern (C) int function(char[][])*).runAll() [0x77ff9ad6]
??:? void rt.dmain2._d_run_main(int, char**, extern (C) int function(char[][])*).tryExec(scope void delegate()) [0x77ff9a6f]
??:? _d_run_main [0x77ff99df]
??:? main [0x77ff93a7]
??:? __libc_start_main [0xbb6541c0]
*/