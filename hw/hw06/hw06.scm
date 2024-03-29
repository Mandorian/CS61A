(define (cddr s)
  (cdr (cdr s)))

(define (cadr s)
  'YOUR-CODE-HERE
  (car (cdr s))
)

(define (caddr s)
  'YOUR-CODE-HERE
  (car (cddr s))
)

(define (sign num)
  'YOUR-CODE-HERE
  (cond
      ((< num 0) -1)
      ((= num 0) 0)
      ((> num 0) 1)
  )
)

(define (square x) (* x x))

(define (pow x y)
  'YOUR-CODE-HERE
  (if (= y 0)
    1
    (if (= 0 (modulo y 2))
      (square (pow x (quotient y 2)))
      (* x (square (pow x (quotient y 2))))
    )
  )
)

