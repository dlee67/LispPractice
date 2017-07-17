;;
(defun NegEven (x)
	(if (and (< x 0)
	(evenp x)) 
	(princ "NegEven")
	(princ "Not"))
)

(princ (NegEven (- 2)))