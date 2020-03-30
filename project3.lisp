;Required Functions
;Check if a number is deficient
(defun deficientp-content (x)
    (cond
        ((<= x 0) "Error. It doesn't make sense to consider negative numbers or 0")
        (
            (< (getSumFactor (getListFactor x (- x 1))) x)
        )
    )
)
(defun deficientp (x)
    (write (deficientp-content x))
    (terpri)
    (repl #'deficientp-content 'deficientp)
)

;Check if a number is abundant
(defun abundantp-content (x)
    (cond
        ((<= x 0) "Error. It doesn't make sense to consider negative numbers or 0")
        (
            (> (getSumFactor (getListFactor x (- x 1))) x)
        )
    )
)
(defun abundantp (x)
    (write (abundantp-content x))
    (terpri)
    (repl #'abundantp-content 'abundantp)
)

;Check if a number is perfect
(defun perfectp-content (x)
    (cond
        ((<= x 0) "Error. It doesn't make sense to consider negative numbers or 0")
        (
            (eql (getSumFactor (getListFactor x (- x 1))) x)
        )
    )
)
(defun perfectp (x)
    (write (perfectp-content x))
    (terpri)
    (repl #'perfectp-content 'perfectp)
)

;Get the sum of list x
(defun getSumFactor (x)
    (cond 
        ((null x) 0)
        ((+ (car x) (getSumFactor(cdr x))))
    )
)

;Get list of factors of x
(defun getListFactor (x curr)
    (cond 
        ((eql x 1) (1)) 
        ((eql curr 0) ())
        (
            (isDivisible x curr)
                (cons curr (getListFactor x (- curr 1)))
        )
        (
            (getListFactor x (- curr 1))
        )
    )   
)

;Check if x is divisible by y
(defun isDivisible (x y) 
    (cond 
        ((> x 0) (isDivisible (- x y) y))
        ((< x 0) nil)
        ((eql x 0) t)
    )
)

;-------------------------------------------------------------------
;Math Functions
;N-th Fibonacci Number
(defun nth-fibo-content (x) 
    (cond 
        ((< x 0) "Error. Cannot be negative")
        ((eql x 0) 0)
        (
            (or (eql x 1) (eql x 2))
                1
        )
        (
            (+ (nth-fibo-content (- x 1)) (nth-fibo-content (- x 2))) 
        )
    )
)
(defun nth-fibo (x)
    (write (nth-fibo-content x))
    (terpri)
    (repl #'nth-fibo-content 'nth-fibo)
)


;Right-Tri
(defun right-tri-content(x y z)
    (and 
        (and 
            (and 
                (> x 0) 
                (> y 0)) 
            (> z 0)) 
        (eql 
            (+ 
                (* x x) 
                (* y y))
            (* z z))  
    )
)
(defun right-tri (x y z)
    (write (right-tri-content x y z))
    (terpri)
    (repl #'right-tri-content 'right-tri)
)

;Factorial
(defun factorial-content (x)
    (cond 
        ((< x 0) "Error")
        ((or (eql x 0) (eql x 1)) 1)
        (
            (* x (factorial-content (- x 1)))
        )
    )
)
(defun factorial (x)
    (write (factorial-content x))
    (terpri)
    (repl #'factorial-content 'factorial)
)

;Absolute value
(defun abs-content(x) 
    (cond
        ((> x 0) x )
        ((- 0 x))
    )
)
(defun abs (x)
    (write (abs-content x))
    (terpri)
    (repl #'abs-content 'abs)
)

;------------------------------------------------------------
;Set functions
;Set union 
(defun union-content (A B) 
    (cond 
        ((null A) B)
        (
            (not (member-content (car A) B))
                (cons (car A) (union-content (cdr A) B))
        )
        (
            (union-content (cdr A) B)
        )
    )
)
(defun union (A B)
    (write (union-content A B))
    (terpri)
    (princ "----Input list of arguments without quotes (EX: ((a b c) (b c d)))----")
    (terpri)
    (repl #'union-content 'union)
)

;Set Intersection
(defun intersection-content (A B)
    (cond
        ((null A) ())
        (
            (member-content (car A) B)
                (cons (car A) (intersection-content (cdr A) B))
        )
        (
            (intersection-content (cdr A) B)
        )
    )
)
(defun intersection (A B)
    (write (intersection-content A B))
    (terpri)
    (princ "----Input list of arguments without quotes (EX: ((a b c) (b c d)))----")
    (terpri)
    (repl #'intersection-content 'intersection)
)

;Insert element into set
(defun insert-content (e L)
    (cond
        (
            (member-content e L)
                L
        )
        (
            (cons e L)
        )
    )
)
(defun insert (e L)
    (write (insert-content e L))
    (terpri)
    (princ "----Input list of arguments without quotes (EX: (a (b c d)))----")
    (terpri)
    (repl #'insert-content 'intersection)
)

;Set membership
(defun member-content (e L)
    (cond
        ((null L) nil)
        (
            (eq (car L) e)
                t
        )
        (
            (member-content e (cdr L))
        )

    )
)
(defun member (e L)
    (write (member-content e L))
    (terpri)
    (princ "----Input list of arguments without quotes (EX: (a (b c a d)))----")
    (terpri)
    (repl #'member-content 'member)
)

;-------------------------------------------------------------------------
;List functions
;Remove-all function
(defun remove-all-content (e L)
    (cond
        ((null L) ())
        (
            (not (eq (car L) e))
                (cons (car L) (remove-all-content e (cdr L)))
        )
        (
            (remove-all-content e (cdr L))
        )
    )
)
(defun remove-all(e L)
    (write (remove-all-content e L))
    (terpri)
    (princ "----Input list of arguments without quotes (EX: (a (b a c a a d a)))----")
    (terpri)
    (repl #'remove-all-content 'remove-all)
)

;Index of
(defun indexof-content (e L)
    (cond
        ((null L) -1)
        ((eq (car L) e) 0)
        (
            (> (indexof-content e (cdr L)) -1)
                (+  (indexof-content e (cdr L)) 1)           
        )
        ( -1 )
    )
)
(defun indexof (e L)
    (write (indexof-content e L))
    (terpri)
    (princ "----Input list of arguments without quotes (EX: (a (b c a d)))----")
    (terpri)
    (repl #'indexof-content 'indexof)
)


;Append two lists
(defun append-content (x y)
    (cond 
        ((null x) y)
        (
            (cons (car x) (append-content (cdr x) y))
        )
    )
)
(defun append (x y)
    (write (append-content x y))
    (terpri)
    (princ "----Input list of arguments without quotes (EX: ((1 3 x a) (4 2 b)))----")
    (terpri)
    (repl #'append-content 'append)
)

;Reverse a list
(defun reverse-content (L)
    (callReverse L '())
)
(defun callReverse (L add)
    (cond
        ((null L) add)
        (
            (callReverse (cdr L) (cons (car L) add))
        )
    )
)
(defun reverse (L)
    (write (reverse-content L))
    (terpri)
    (princ "----Input list of arguments without quotes (EX: ((a b c d))----")
    (terpri)
    (repl #'reverse-content 'reverse)
)

;REPL
(defun repl (fun name)
    (format t"Enter a list of arguements for ~s (empty list to stop): " name)
    (force-output nil)
    (setq input (read))
    (cond
        ((not (null input)) 
            (write (apply fun input))
            (terpri)
            (repl fun name)
        )
        ('Ok)
    )
)