(define (caar x) (car (car x)))
(define (cadr x) (car (cdr x)))
(define (cdar x) (cdr (car x)))
(define (cddr x) (cdr (cdr x)))

; Some utility functions that you may find useful to implement

(define (zip pairs)
  
)


;; Problem 15
;; Returns a list of two-element lists
(define (enumerate s)
  ; BEGIN PROBLEM 15

  (define (solve index lst)
    (if (null? lst)
      nil
      (append (list ) (list (list index (car lst))) (solve (+ index 1) (cdr lst)))
    )
  )
  (solve 0 s)
)
  ; END PROBLEM 15

;; Problem 16

;; Merge two lists LIST1 and LIST2 according to COMP and return
;; the merged lists.
(define (merge comp list1 list2)
  ; BEGIN PROBLEM 16
  (if (or (null? list1) (null? list2))
    (append list1 list2)
    (if (comp (car list1) (car list2))
      (append (list (car list1)) (merge comp (cdr list1) list2))
      (append (list (car list2)) (merge comp list1 (cdr list2)))
    )
  )
)
  ; END PROBLEM 16


(merge < '(1 5 7 9) '(4 8 10))
; expect (1 4 5 7 8 9 10)
(merge > '(9 7 5 1) '(10 8 4 3))
; expect (10 9 8 7 5 4 3 1)

;; Problem 17

(define (nondecreaselist s)
  ; BEGIN PROBLEM 17
  (define (solve result temp_list last_val lst)
    (if (or (null? lst))
      (if (= 0 (length temp_list))
        result
        (append result (list temp_list))
      )
      (if (>= (car lst) last_val)
        (solve result (append temp_list (list (car lst))) (car lst) (cdr lst))
        (solve (append result (list temp_list)) (list ) 0 lst))
      )
    )
  (solve (list ) (list ) 0 s)
)
  ; END PROBLEM 17

;; Problem EC
;; Returns a function that checks if an expression is the special form FORM
(define (check-special form)
  (lambda (expr) (equal? form (car expr))))

(define lambda? (check-special 'lambda))
(define define? (check-special 'define))
(define quoted? (check-special 'quote))
(define let?    (check-special 'let))

;; Converts all let special forms in EXPR into equivalent forms using lambda
(define (let-to-lambda expr)
  (cond ((atom? expr)
         ; BEGIN PROBLEM EC
         'replace-this-line
         ; END PROBLEM EC
         )
        ((quoted? expr)
         ; BEGIN PROBLEM EC
         'replace-this-line
         ; END PROBLEM EC
         )
        ((or (lambda? expr)
             (define? expr))
         (let ((form   (car expr))
               (params (cadr expr))
               (body   (cddr expr)))
           ; BEGIN PROBLEM EC
           'replace-this-line
           ; END PROBLEM EC
           ))
        ((let? expr)
         (let ((values (cadr expr))
               (body   (cddr expr)))
           ; BEGIN PROBLEM EC
           'replace-this-line
           ; END PROBLEM EC
           ))
        (else
         ; BEGIN PROBLEM EC
         'replace-this-line
         ; END PROBLEM EC
         )))

