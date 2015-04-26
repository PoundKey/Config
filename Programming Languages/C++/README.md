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

### Namespaces
- A namespace defines an area of code in which all identifiers are guaranteed to be unique. By default, all variables and functions are defined in the global namespace.
- It’s legal to declare namespace blocks in multiple locations (even multiple times in the same file, if you can find a good reason for doing so). All declarations within the namespace block are considered part of the namespace.

```cpp
namespace Foo {
    // This doSomething() belongs to namespace Foo
    int doSomething(int x, int y) {
        return x + y;
    }
}


int main() {		
    cout << Foo::doSomething(4, 3) << endl;
    return 0;
}


int main() {

    {
        using namespace Foo;
        // calls to Foo:: stuff here
    } // using namespace Foo expires
 
    {
        using namespace Goo;
        // calls to Goo:: stuff here
    } // using namespace Goo expires
 
    return 0;
}
```

### Enumerated Types
- Enumerated types are incredibly useful for code documentation and readability purposes when you need to represent a specific, predefined set of states.

```cpp
enum Color {
	RED,
	BLUE, // BLUE is put into the global namespace
	GREEN
};

enum Feeling {
	HAPPY,
	TIRED,
	BLUE // error, BLUE was already used in enum Color in the global namespace
};

Color vertex = BLUE;
switch(vertex) {
     case RED   : std::cout << "red"   "\n"; break;
     case GREEN : std::cout << "green" "\n"; break;
     case BLUE  : std::cout << "blue"  "\n"; break;
}

// example: states tracking
enum ParseResult {
    SUCCESS = 0,
    ERROR_OPENING_FILE = -1,
    ERROR_READING_FILE = -2,
    ERROR_PARSING_FILE = -3,
};
 
ParseResult ParseFile() {

    if (!OpenFile())
        return ERROR_OPENING_FILE;
    if (!ReadFile())
        return ERROR_READING_FILE;
    if (!Parsefile())
        return ERROR_PARSING_FILE;
 
    return SUCCESS;
}

if (ParseFile() == SUCCESS) {
    // do something
    } else {
    // print error message
    }

// enum class type => Strong enum class type defined in C++ 11
```

### Typedefs
- Typedefs allow the programmer to create an alias for a data type, and use the aliased name instead of the actual type name. To declare a typedef, simply use the typedef keyword, followed by the type to alias, followed by the alias name:

```cpp
// typedef Exist New
typedef long miles; // define miles as an alias for long

// The following two statements are equivalent:
long nDistance;
miles nDistance;

#ifdef INT_2_BYTES
typedef char int8;
typedef int int16;
typedef long int32;
#else
typedef char int8;
typedef short int16;
typedef int int32;
#endif

```

### Struct
```cpp
struct Employee {
    int ID;
    int age;
    float wage;
};
 
struct Company {
    Employee CEO;
    int numberOfEmployees;
};
 
Company company = {{1, 42, 60000.0f}, 21};

```
