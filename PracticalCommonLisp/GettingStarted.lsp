;; (print (+ 2 5))
;; (defun hello-world () (print "Hello, World"))
;; (hello-world)
;; (list :a 1 :b 2 :c 3)
(defun make-cd (title artist rating ripped)
  (list :title title :artist artist :rating rating :ripped ripped))
(make-cd "Roses" "Kathy Mattea" 7 t)
(setf foo 42)
(print foo)
(print (* (+ 1 2) (+ 2 2)))
;; An even simpler special operator is QUOTE, 
;; which takes a single expression as its "argument" and simply returns it, unevaluated. 
;; For instance, the following evaluates to the list (+ 1 2), not the value 3:
(quote (+ 1 2))
;; you can write this:
'(+ 1 2)
;; With that, you can ...
(setf x '(+ 1 2))
(print x)