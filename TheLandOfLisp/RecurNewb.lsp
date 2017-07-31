;;Recur so variable is added with one.
;;cut at two.
(setq val 0)
(defun sF (x)
	(let (x val)
	(if (> x 1)
		(princ "it's two now.")
		(setq val (sF (+ x 1)))
	)
	)
	(princ x)
)

	