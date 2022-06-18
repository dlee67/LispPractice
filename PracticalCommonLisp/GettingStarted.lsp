;; (setf someTwos `(1 2 2 3 1 1 3 2 5 1))
;; (defun countTwos (lst value)
;;     (setf newVal (+ value 1))
;;     (cond
;;         ((not lst) value)
;;         ((= 2 (car lst)) (countTwos (cdr lst) newVal))
;;         (t (countTwos (cdr lst) value))
;;     )
;; )
;; (print (countTwos `(1 2 2 3 1 1 3 2 5 1) 0))

(defun flatten (lst)
    (cond
        ((not lst) ())
        ;; Think about the CONS vs append.
        ;; Think about the linked list and how its nodes are made out of.
        ((listp (car lst)) (append (car lst) (flatten (cdr lst))))
        (t (cons (car lst) (flatten (cdr lst))))
    )
)
;; (print (flatten `(1 2 3 (4 5) 6 7)))

(print (append `(1 2) `(3 4)))
(print (cons `(1 2) `(3 4)))