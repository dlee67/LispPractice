#|
(defun addOne (x) 
	(+ x 1))
(princ (mapcar #'addOne '(1 2 3 4 5)))
(terpri)
|#
(princ (mapcar #'(lambda (x) (+ x 1)) '(1 2 3 4 5 6 7)))

