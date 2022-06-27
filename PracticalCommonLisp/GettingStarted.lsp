;; (print (+ 2 5))
;; (defun hello-world () (print "Hello, World"))
;; (hello-world)
;; (list :a 1 :b 2 :c 3)
;; (defun make-cd (title artist rating ripped)
;;   (list :title title :artist artist :rating rating :ripped ripped))
;; (make-cd "Roses" "Kathy Mattea" 7 t)
;; (setf foo 42)
;; (print foo)
;; (print (* (+ 1 2) (+ 2 2)))
;; An even simpler special operator is QUOTE, 
;; which takes a single expression as its "argument" and simply returns it, unevaluated. 
;; For instance, the following evaluates to the list (+ 1 2), not the value 3:
;; (quote (+ 1 2))
;; you can write this:
;; '(+ 1 2)
;; With that, you can ...
;; (setf x '(+ 1 2))
;; (print x)
;; (print (if (> 2 3) "X" "Y"))
;; (print (if (> 3 2) "X" "Y"))
;; (print (and (= 1 2) (= 3 3)))
;; (print (or (= 1 2) (= 3 3)))

;; (defun someFunc (num)
;;     (format T "Number is at: ~d" num)
;;     (terpri)
;;     (cond 
;;         ((= num 5) (print "Is 5")) 
;;         ((/= num 5) (someFunc (+ num 1)))
;;     )
;; )
;; (someFunc 0)

;; (defun flatten (lst)
;;     (cond
;;         ((not lst) ())
        ;; Think about the CONS vs append.
        ;; Think about the linked list and how its nodes are made out of.
;;         ((listp (car lst)) (append (car lst) (flatten (cdr lst))))
;;         (t (cons (car lst) (flatten (cdr lst))))
;;     )
;; )
;; (print (flatten `(1 2 3 (4 5) 6 7)))
;; (print (append `(1 2) `(3 4)))
;; (print (cons `(1 2) `(3 4)))
