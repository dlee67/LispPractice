;;Probably need a whole entire day in order to perfectly understand this.
(defun anyoddp (x)
	(cond ((null x) nil)
	((oddp (first x)) t)
	(t (anyoddp (rest x)))))
	
(princ (anyoddp '(1 2 3 4 5 6 7)))