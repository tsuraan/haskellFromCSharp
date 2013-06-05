foo: Foo.exe
	mkbundle --deps Foo.exe -o foo

Foo.exe: Foo.so
	mcs Foo.cs

Foo.so:
	ghc -shared -dynamic --make Foo.hs -o Foo.so -lHSrts-ghc7.6.2

