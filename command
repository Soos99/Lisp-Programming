//Suggested comment

//Run project
(load "project3.lisp")

//List function
(append '(a b c) '(d e f))
(append '(1 3 x a) '(4 2 b))
(reverse '(a b c))
(indexof 'a '(b c a d))
(indexof 'e '(b c a d))
(remove-all 'a '(b a c a a d a))
(remove-all 'e '(b a c a e d e))
(remove-all 'f '(b a c a e d e))

//Set function
(member 'a '(a b c d))
(insert 'a '(b c d))
(insert 'a '(a b c d))
(intersection '(a b c) '(a c d))
(intersection '(b) '(a c d))
(union '(a b c) '(b c d))
(union '(d e f g) '(f c d e))
(union '(a b c) '(b c a))
(union '(a b c) '(d e f))

//Math function
(abs 7)
(abs -7)
(abs 0)
(factorial 5)
(factorial 0)
(factorial -2)
(right-tri 3 4 5)
(right-tri 12 5 13)
(right-tri -3 4 5)
(right-tri 1 2 3)
(nth-fibo 6)
(nth-fibo 10)
(nth-fibo -1)

//Other functions
(perfectp 5)
(perfectp 6)
(abundantp 5)
(abundantp 12)
(deficientp 5)
(deficientp 12)
