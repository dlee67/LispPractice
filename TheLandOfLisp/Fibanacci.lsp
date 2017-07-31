#|
	Braittany was right, she stated that combination of the
	cdr and car should be used in recursion.
	
	And the reason is kinda obvious, method of serching values can't be done comfortably as it is in Java.
	
|#
(setq newList (list ))
(defun pickEven (x)
	(if (evenp (find-if #'evenp x))
		(append newList (find-if #'evenp x))
		(append 
	)
	(pickEven (cdr x))
)


