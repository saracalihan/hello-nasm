# usage:   ./build.sh folder file
# example: ./build.sh io hello_world

nasm -f elf64  -o $1/$2.o $1/$2.nasm &&
ld $1/$2.o -o $1/$2 &&
./$1/$2
