(define fact (lambda (x)
	(if (= x 1)
	(1)
	else
	(* x (fact (- x 1))))))