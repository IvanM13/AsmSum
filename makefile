sum: sum.o
	gcc -o sum sum.o -no-pie
sum.o: sum.asm
	nasm -f elf64 -g -F dwarf sum.asm -l sum.lst