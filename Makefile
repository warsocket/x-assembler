all: hello32.exe hello64.exe

clean: clean32 clean64

clean32:
	rm hello32.obj hello32.exe

clean64:
	rm hello64.obj hello64.exe

hello64.exe:
	x86_64-w64-mingw32-ld hello64.obj -l kernel32 -o hello64.exe

hello64.obj:
	nasm -f win64 hello64.asm -o hello64.obj

hello32.exe: hello32.obj
	 i686-w64-mingw32-ld hello32.obj -L /usr/i686-w64-mingw32/lib/ -l kernel32 -o hello32.exe

hello32.obj:
	nasm -f win32 hello32.asm -o hello32.obj