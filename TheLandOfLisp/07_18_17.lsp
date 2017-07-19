#|
(defun myFunction () 
	(let ((y 5) 
		(z 5))
	(princ y)
	(princ z)
	)
)
(myFunction)
|#
;;Autocompletion is like, why.
(defun catchVars (x) 
	(let ((one (first x)) 
		(two (second x)))
		(princ one)
		(princ " ")
		(princ two)
	)
)
(setf myName (list 'Dong 'Lee))
(princ "My name is: ") (princ (first myName)) (princ " ") (princ (second myName))
(terpri)
(terpri)
(princ "Starting new block")
(terpri)
(terpri)
(defun price-change (old new)
	(let* ((diff (- new old))
			(proportion (/ diff old))
			(percentage (* proportion 100.0)))
	(princ (list 'widgets 'changed 'by percentage 'percent)))
)
(price-change 1.25 1.35)
(terpri)
(terpri)
(princ "New block starting")
(terpri)
(terpri)
(setq oTT (append (list 1 2 3) (list 4)))
(princ oTT)
(terpri)
(terpri)
(princ "Let's go play around with cons")
(terpri)
(setq smVar (cons 'a 'b))
(terpri)
(princ smVar)
(terpri)
(setq tstVar (list 'a 'b))
(terpri)
(princ tstVar)
(terpri)
(setq comVar (append tstVar 'c))
(terpri)
(princ comVar)
(terpri)
(terpri)
(setq lastVar (append tstVar (list 'c)))
(princ lastVar)
(terpri)
(terpri)
;;This is how I will be able to fetch the value from a list via indexing.
(princ (nth 2 lastVar))