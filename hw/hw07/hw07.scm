(define (filter-lst fn lst)
  'YOUR-CODE-HERE
  (if (eq? lst nil)
	nil
	(if (eq? (fn (car lst)) #t)
		(cons (car lst) (filter-lst fn (cdr lst)))
		(filter-lst fn (cdr lst))
	)
  )
)

;;; Tests
(define (even? x)
  (= (modulo x 2) 0))
(filter-lst even? '(0 1 1 2 3 5 8))
; expect (0 2 8)


(define (interleave first second)
  'YOUR-CODE-HERE
  (if (or (eq? first nil) (eq? second nil))
	(append first second)
	(cons (car first)
		(cons (car second)	
			(interleave (cdr first) (cdr second))
		)
	)
  )
)

(interleave (list 1 3 5) (list 2 4 6))
; expect (1 2 3 4 5 6)

(interleave (list 1 3 5) nil)
; expect (1 3 5)

(interleave (list 1 3 5) (list 2 4))
; expect (1 2 3 4 5)


(define (accumulate combiner start n term)
  'YOUR-CODE-HERE
  (if (= n 0)
	start
	(accumulate combiner (combiner start (term n)) (- n 1) term)
  )
)

(define (remove item lst)
	(if (eq? lst nil)
		nil
		(if (= item (car lst))
			(remove item (cdr lst))
			(cons (car lst) (remove item (cdr lst)))
		)
	)
)

(define (no-repeats lst)
  'YOUR-CODE-HERE
  (if (eq? lst nil)
	nil
	(cons (car lst) (no-repeats (remove (car lst) (cdr lst))))
  )
)

