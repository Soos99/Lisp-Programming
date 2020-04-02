# Lisp-Programming
Implementation of basic functions using recursion in Lisp (List Programming Language)

## Supported functions
#### 1. List functions:
- Append two lists: (append A B). E.g. (append '(a b c) '(d e f))
- Reverse a list: (reverse L). E.g. (reverse '(a b c))
- Get an index of an element in a list (-1 if not): (indexof e L). E.g. (indexof 'e '(b c a d))
- Remove all occurences of an element in a list: (remove-all e L). E.g. (remove-all 'e '(b a c a e d e))
#### 2. Set functions:
- Check if an element is in a set: (member e L). E.g. (member 'b '(x y m n b d))
- Insert an element to a set: (insert e L). E.g. (insert 'h '(x y z))
- Get intersection between two sets: (intersection A B). E.g. (intersection '(a x y) '(a c y))
- Get union between two sets: (union A B). E.g. (union '(d e f g) '(f c d e))
#### 3. Math functions:
- Get absolute value of a number: (abs n). E.g. (abs 7)
- Get n-th factorial value: (factorial n). E.g. (factorial 10)
- Check if 3 numbers are sides of a right triangle: (right-tri x y z). E.g (right-tri 3 4 5)
- Get n-th number of fibonacci sequence: (nth-fibo x). E.g. (nth-fibo 10)
#### 4. Other functions:
- Check if a number is perfect: (perfectp n). E.g. (perfectp 10)
- Check if a number is deficient: (deficientp n). E.g. (deficientp 10)
- Check if a number is abundant: (abundantp n). E.g. (abundantp 10)

## Running Instructions
1. Download [Lisp](https://abcl.org/) and install binary packages abcl-bin-[version]
2. Clone this repository
```
$ git clone https://github.com/Soos99/Lisp-Programming.git
$ cd Lisp-Programming
```
3. Put binary package in Lisp-Programming directory and open Terminal/Power Shell
4. Load the project: 
```
$ (load "basic.lisp")
```
5. Run any function you want: 
```
$ (func arg1 arg2 ... argn)
```

## Contributors 
1. [Hoang Le](https://github.com/Soos99)
2. [Loc Bui](https://github.com/hekl0)
