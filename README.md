# CMPE310_lab5
CMPE310 Lab 5 files

# Part I A:
```
gcc -O0 -S -m32 helloworld.c
```

# Part I B:
```
gcc - O4 -S helloworld.c
```

# Part II:

## Figure 2: 
```
gcc -O0 -S -m32 figure2.c
```

## Figure 3:
```
gcc -O0 -S -m32 figure3.cpp
```

## Figure 5:

The following steps are to be performed to run and see the output.

1. Assemble:
```
as figure5.s -o max_array.o
```

2. Link:
```
ld max_array.o -o max_array
```

3. Run:
```
./max_array
```

4. Run in Debugger:
```
gdb ./max_array
```
5. PRESS ENTER

6. Add breakpoint
```
break done
```

7. Run Again:
```
run
```

8. Get register info:
```
info registers eax
```
