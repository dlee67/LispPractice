;;Let's play around with variable.
;;Divide a variable with a variable...?
;;21/7
;;It worked
(let ((x 21) (y 7)) (princ (/ x y)) 
	(let z (/ x y) (if (eq z 3)(princ "Working"))))


