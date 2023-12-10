day ?= 1

default:
	@echo Compiling day $(day)...
	rm -rf day$(day).exe
	riscv64-linux-gnu-as day$(day).s -o day$(day).o
	riscv64-linux-gnu-gcc -o day$(day).exe day$(day).o -nostdlib -static