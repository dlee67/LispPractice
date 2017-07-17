(defun NegOrOdd (x) 
	(if (or (< x 0) (oddp x))
		(princ "Is Neg Or Odd")
		(princ "Something else")
	)
)

(NegOrOdd 2)