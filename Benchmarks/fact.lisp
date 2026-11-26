; factorial

(define fact (lambda (x)
	(if (= x 1)
	(1)			; base case
	else
	(* x (fact (- x 1))))))  ; recurse to n-1!
