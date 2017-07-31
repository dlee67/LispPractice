;;sys_time buffer should be bigger than 1 at least.
(setq x (list 1 2 3 4 5))
(princ (find-if #'evenp x))