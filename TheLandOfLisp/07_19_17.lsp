(defun someFunc (x) 
	(+ x 5)
	)
(princ (someFunc 5))
;;Functions are never functions as they seem?
(setf someFunction #'list)
(princ someFunction)
(terpri)
(princ "new line")
(terpri)
(princ (funcall someFunction 'a 'b 'c))
#|The whole point of the funcall is that 
it is calling the actual entity of the function
that is embedded in the lisp.|#
(terpri)
(princ "Starting a new concept")
(terpri)
#|There is this thing called mapcar.
mapcar will apply the operations on each elements in the 
list; therefore, mind as well make a function or something.
|# 
(defun getOneAddOne (x) 
	(+ x 1)
	)
(setf toEight (list 1 2 3 4 5 6 7 8))
#| Since, the quotation in itself will make it evaluate as it is; meaning,
'(someListReally) is evaluated as the list, without the (list .... |#
(princ (mapcar #'getOneAddOne toEight))
(terpri)
(princ (mapcar #'getOneAddOne '(1 2 3 4 5 6 7 8)))
(terpri)
;;So, (mapcar somefunction someList) <- is the layout of the mapcar.
(defun squareIt (x) 
	(* x x)
)
(princ (mapcar #'squareIt '(1 2 3 4 5 6 7)))
(defun divideItself (x)
	(/ x x)
)
(terpri)
(princ (mapcar #'divideItself '(1 2 3 4 5 6 7)))
(terpri)
(princ "Starting a new concept: lambda")
(terpri)
(princ (mapcar #'(lambda (n) (* n n)) '(1 2 3 4 5 6 7 )))
(terpri)
(princ "both are using find-if, let's try to notice the differences.")
(terpri)
(princ "using find-if: ")(princ (find-if #'(lambda (x) (> x 7)) '(2 3 4 5 6 7 8)))
(terpri)
(princ "using find-if: ")(princ (find-if #'(lambda (x) (> x 4)) '(2 3 4 5 6 7 8)))
(terpri)
(princ "Now using remove if")
(terpri)
(princ (remove-if #'(lambda (x) (> x 4)) '(1 2 3 4 5 6 7))) ;; Returned a new list.
(terpri)
(princ "Really should go over the documentation on this one.")
(terpri)
(princ (reduce #'+ '(1 2 7)))