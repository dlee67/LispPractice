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

;; (setf toTen '(1 2 3 4 5 6 7 8 9 10))
;; (print (car toTen)) ;; "pop"
;; (print (cdr toTen)) ;; Everything except the first element.
;; (defun iter (lst)
    ;; (print (car lst))
    ;; (cond
        ;; ((not lst) ()) ;; When lst is empty, we don't do anything. Process an empty list.
        ;; (t (iter (cdr lst))) ;; t means "true", and it's really just there to satisfy the compiler where it wants 2 arguments for cond parameters.
    ;; )
;; )
;; (iter toTen)

;; (setf x '(+ 1 2))
;; (print `(1 2 ,(+ 3 4)))
;; (print `(,1 ,x (+ 3 4)))
;; (print `(+ 1 ,2 ,(+ 3 4)))
;; (print (cons 42 (cons 69 (cons 613 nil))))
;; (print (cons `x `y))
;; (print (cons `x `(y z)))
;; https://en.wikipedia.org/wiki/Cons#Lists
;; (print (cons 42 (cons 69 (cons 613 nil))))
;; (print `(x . y))
;; (print (list (+ 1 2 3)))
;; (print (+ (list (+ 1 2 3)) (list (+ 1 2 3))))
;; (list (+ 1 2 3))
;; (print (list `* `(+ 2 2) `(- 2 2)))
;; (print `(1 ,(list 2 3) 4))
;; (print `(1 ,@(list 2 3) 4))
;; (print `(1 ,@(list 2 3) 4))
;; (print `(,@(list 1 2) ,@(list 3) 4))

(setf someTwos `(1 2 2 3 1 1 3 2 5 1))
(defun countTwos (lst value)
    (print "Counting")
    (print lst)
    (print value)
    (setf newVal (+ value 1))
    (cond
        ((not lst) value)
        ((= 2 (car lst)) (countTwos (cdr lst) newVal))
        (t (countTwos (cdr lst) value))
    )
)
;; Too few arguments (1 instead of at least 2) given to COUNTTWOS
(countTwos `(1 2 2 3 1 1 3 2 5 1) 0)