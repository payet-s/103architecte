# 103architecte

Subject
-------
The goal of this project is to transform coordinates via a transformation
matrix.

__Supported transformations:__
 * Take coordinates _i, j_ as parameters
   * __H__ - Homothety
   * __T__ - Translation
 * Take an angle _a_ in degree as parameter
   * __R__ - Rotation
   * __S__ - Symmetry

Dependencies
------------
 * Bison
 * Flex
 * GCC

Usage
-----
To compile the program, run the following command:
```bash
make
```

__Original program usage:__
```
./103architecte x y m (i j | a)
  x, y - Coordinates (integers)
  m - Transformation (character)
  i, j - Coordinates (integers)
  a - Angle (in degree)
```

__Shakespeare usage:__  
Each argument will be passed through the standard input and separated by
a new line. You can accumulate transformations and the program will print
the result when a new line will be given instead of a character which
corresponds to a transformation.
```
./103architecte
x
y
m
i
j
m
a

```

Limitations
-----------
There is **no floating point** in SPL. By the way, you **can't import**
libraries neither. In other word, you have to **recode cos() and sin()**
functions. The approach I opted for was to **approximate the integer value**
of cos/sin which are -1, 0, 1. It isn't possible to grab the **command line
parameters** as well.

Notes
-----
I forked the **Marlowe Programming Language**, added new characters and words
to the language. MPL is a fork of the **Shakespeare Programming Language**.
So, this project is a Shakespeare Programming Language fork's fork.

TODO
----
Will probably never be done, anyway =vP.
 * Print a usage
 * Pretty print
   * Point coordinates
   * Matrix
 * Implement a floating point alternative
 * Increase precision
   * cos
   * sin

License
-------
 * GNU GPL (see [marlowe/LICENSE](https://github.com/payet-s/103architecte/blob/master/marlowe/LICENSE))

Documentation
-------------
Some useful pieces of information:
 * [Official Website](http://shakespearelang.sourceforge.net/report/shakespeare/)
 * [Fork of the language](http://stackoverflow.com/questions/1948372/compiling-and-executing-the-shakespeare-programming-language-translator-spl2c-on)

There are also some "secret" (i.e. unexpected) behaviors that are undocumented.  
Live & Learn.
