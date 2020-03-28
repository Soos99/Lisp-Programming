(defun remove-all(e L)
    (callRemoveAll e (reverse L) '())
)
(defun callRemoveAll (e L new)
    (cond
        (
            (null L)
                new
        )
        (
            (not (eq (car L) e))
                (callRemoveAll e (cdr L) (cons (car L) new))
        )
        (
            (callRemoveAll e (cdr L) new)
        )
    )
)
(defun indexof (e L)
    (callIndexOf e L 0)
)
(defun callIndexOf (e L num)
    (cond
        (
            (eq (car L) e)
                num
        )
        (
            (null L)
                -1
        )
        (
            (callIndexOf e (cdr L) (+ num 1))
        )
    )
)
(defun append (x y)
    (callAppend (reverse x) y)
)
(defun callAppend(x y)
    (cond
        (
            (eq (car x) nil)
                y
        )
        (
            (callAppend (cdr x) (cons (car x) y))
        )
    )
)
(defun reverse (L)
    (callReverse L '())
)
(defun callReverse (L add)
    (cond
        (
            (null L)
                add
        )
        (
            (callReverse (cdr L) (cons (car L) add))
        )
    )
)