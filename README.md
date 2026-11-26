# LispCC

A Scheme interpreter based on jsun98/LispCC. Originally a fork, but now detached as there were just too many changes.

A simple and fun Scheme interpreter written in C++ (C++11). 

## Installation

### Prerequisites

```
GNU g++ -std=c++11
```

### Installing

Either compile with gcc or build the solution in Visual Studio 19 or later. Both 32-bit and 64-bit builds work. The 64-bit build uses 64-bit integers.

## How it works

### Representation of Scheme objects in C++

| __Scheme Data Type__  | __Our Internal Representation__                 |
| --------------------- | ----------------------------------------------- |
| Numbers               | C++'s 'int' (64-bit on x64 builds) and 'double' |
| Symbols               | C++'s built-in `std::string` data type.         |
| Booleans (`#t`, `#f`) | C++'s built-in `std::string` data type.         |
| Pairs and Lists       | The `SList` class, defined in `SList.cpp`.      |

### List of Supported Scheme Expressions

TBS: Many new ones as described in CMU Scheme.

```
quote, '
if ... else ...
define
set!
lambda
+, -, *, /, >, <, >=, <=
=, eqv?
abs
append
apply
begin
car
cdr
cons
length
list
list?
map
max
min
null?
number?
procedure?
symbol?
mod
sqrt
sin
cos
tan
asin
acos
atan
```

### Files

- FormattedIO.cpp: reading input from stdin
- Parser.cpp: lexical analysis
- SList.cpp: stores any scheme expression
- NativeProcedures.cpp: defines the standard Scheme procedures
- Environment.cpp: execution environement, can be nested
- Main.cpp: REPL

### 

## Authors

* **Giles Puckett**
* **Joshua Sun** - [github](https://github.com/jsun98)

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details

## 
