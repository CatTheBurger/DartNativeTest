import 'dart:ffi';

DynamicLibrary nativeTestLib = DynamicLibrary.open("./bin/Classes/libnative_test.so");

final int Function(int x, int y) nativeAdd = nativeTestLib.lookup<NativeFunction<Int32 Function(Int32, Int32)>>("native_add").asFunction();
