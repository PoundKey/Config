# C++ Notes

### Compiling/Linking
![C++](img/Compile.png)

```bash
g++ -c file1.cpp file2.cpp file3.cpp
```

![C++](img/Link.png)

```bash
g++ -o prog file1.o file2.o file3.o
# All in one step
g++ -o prog file1.cpp file2.cpp file3.cpp
```


### Preprocessor
- The preprocessor is perhaps best thought of as a separate program that runs before the compiler when you compile your program. It's purpose is to process directives. Directives are specific instructions that start with a # symbol and end with a newline (NOT a semicolon). 

- Examples
	- #include: tells the preprocessor to insert the contents of the included file into the current file at the point of the #include directive. 
	- #define identifier replacement: Whenever the preprocessor encounters this directive, any further occurrence of "identifier" is replaced by "replacement". (e.g., #define MY_NAME "CTXue", #define YEN_PER_DOLLAR 21) 
	- __Conditional Compilation__: allows you to specify under what conditions something will or won‟t compile. 
	- e.g., #ifdef, #ifndef, and #endif. The #ifdef preprocessor directive allow the preprocessor to check whether a value has been previously #defined. If so, the code between the #ifdef and corresponding #endif is compiled. If not, the code is ignored.
	- __Header guards__: Because header files can include other header files, it is possible to end up in the situation where a header file gets included multiple times.

	```cpp
		#ifndef SOME_UNIQUE_NAME_HERE
		#define SOME_UNIQUE_NAME_HERE
		// forward declaration
		#endif
	```
	- When this header is included, the first thing it does is check whether SOME_UNIQUE_NAME_HERE has been previous defined. 

### Constant
- define constant: const double pi(3.14159);

### Operator Precedence 
![C++](img/prec.png)

### Linkage
- A variable’s linkage determines whether it can be referenced by other files.
- A variable with internal linkage is called a internal variable (or static variable), and it can only be used within the file it is defined in. A variable with external linkage is called an external variable, and it can be used both in the file it is defined in, as well as in other files.
- By default, __non-const__ variables declared outside of a block are assumed to be __external__, and __const__ variables declared outside of a block are assumed to be __internal__.
- e.g., extern const double pi(3.14);  static int internal_var;
