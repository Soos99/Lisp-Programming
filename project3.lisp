;Required Functions
;Check if a number is deficient
(defun deficientp (x)
    (cond
        ((<= x 0) "Error. It doesn't make sense to consider negative numbers or 0")
        (
            (< (getSumFactor (getListFactor x (- x 1))) x)
        )
    )
)
;Check if a number is abundant
(defun abundantp (x)
    (cond
        ((<= x 0) "Error. It doesn't make sense to consider negative numbers or 0")
        (
            (> (getSumFactor (getListFactor x (- x 1))) x)
        )
    )
)
;Check if a number is perfect
(defun perfectp (x)
    (cond
        ((<= x 0) "Error. It doesn't make sense to consider negative numbers or 0")
        (
            (eql (getSumFactor (getListFactor x (- x 1))) x)
        )
    )
)

;Get the sum of list x
(defun getSumFactor(x)
    (cond 
        ((null x) 0)
        ((+ (car x) (getSumFactor(cdr x))))
    )
)

;Get list of factors of x
(defun getListFactor(x curr)
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

;Math Functions
;N-th Fibonacci Number
(defun nth-fibo (x) 
    (cond 
        ((< x 0) "Error. Cannot be negative")
        ((eql x 0) 0)
        (
            (or (eql x 1) (eql x 2))
                1
        )
        (
            (+ (nth-fibo (- x 1)) (nth-fibo (- x 2))) 
        )
    )
)
;Right-Tri
(defun right-tri(x y z)
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
;Factorial
(defun factorial (x)
    (cond 
        ((< x 0) "Error")
        ((or (eql x 0) (eql x 1)) 1)
        (
            (* x (factorial (- x 1)))
        )
    )
)
;Absolute value
(defun abs(x) 
    (cond
        ((> x 0) x )
        ((- 0 x))
    )
)


;Set functions
;Set union 
(defun union (A B) 
    (cond 
        ((null A) B)
        (
            (not (member (car A) B))
                (cons (car A) (union (cdr A) B))
        )
        (
            (union (cdr A) B)
        )
    )
)
;Set Intersection
(defun intersection (A B)
    (cond
        ((null A) ())
        (
            (member (car A) B)
                (cons (car A) (intersection (cdr A) B))
        )
        (
            (intersection (cdr A) B)
        )
    )
)
;Insert element into set
(defun insert (e L)
    (cond
        (
            (member e L)
                L
        )
        (
            (cons e L)
        )
    )
)
;Set membership
(defun member (e L)
    (cond
        ((null L) nil)
        (
            (eq (car L) e)
                t
        )
        (
            (member e (cdr L))
        )

    )
)


;List functions
;Remove-all function
(defun remove-all(e L)
    (cond
        ((null L) ())
        (
            (not (eq (car L) e))
                (cons (car L) (remove-all e (cdr L)))
        )
        (
            (remove-all e (cdr L))
        )
    )
)
;Index of
(defun indexof (e L)
    (cond
        ((null L) -1)
        ((eq (car L) e) 0)
        (
            (> (indexof e (cdr L)) -1)
                (+  (indexof e (cdr L)) 1)           
        )
        ( -1 )
    )
)
;Append two lists
(defun append (x y)
    (cond 
        ((null x) y)
        (
            (cons (car x) (append (cdr x) y))
        )
    )
)
;Reverse a list
(defun reverse (L)
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