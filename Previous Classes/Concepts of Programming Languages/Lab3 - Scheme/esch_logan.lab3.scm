#lang racket
(define (f lst)
  ; (a) ;
  ; This line checks if the list 1st is null. If it is the function returns an empty list. 
  ; If the list is not null the function adds one to the first element and calls itself recursively on
  ; The rest of the list.
  (if (null? lst)
      ; (b) ;
      ; This line is the first part of the if above, it will return an empty list if the above if is true.
      ; It is the base case for the recursion. 
      '() 
      ; c ;
      ; this line creates a new pair of the first element of this list + 1 and a recursive call on the 
      ; remaining elements of the list.
      (cons (+ 1(car lst)) (f (cdr lst)))))


; takes an atom and a list.
; returns #t if the atom is in the list and #f otherwise.
; returns #f for an empty list as an empty list can contain no elements.
(define (member? e lst)
  ; if the list is empty return false, base case for recursion. 
  (if(null? lst)
     #f
     ;else if the first element of the list is equal to the atom we are looking for, return #t.
     (if(equal? e (car lst))
               #t
               ; finaly, this was not the atom we are looking for, recurse on the cdr of the list. 
               (member? e (cdr lst)))))


; takes a list and checks if it is a well formed set (contains no duplicates)
; #t if empty or list contains no duplicates
; #f if it contains duplicates.
(define (set? lst)
  ;check if list is null, if so return #t. base for recursion and empty set is well formed. 
  (if(null? lst)
     #t
     ;check if the first element of the list is repeated in the list using member?
     ;if it is return false, 
     ;otherwise recurse on the cdr of the list. 
     (if(member? (car lst) (cdr lst))
        #f
        (set? (cdr lst)))))


(member? 'one '(1 2 3 4))
(set? '(it was the best of times, it was the worst of times))


; takes two lists and returns a list that is the mathmatical union of them.
; function asumes that both lists are already well formed themselves.
(define (union lst1 lst2)
  ;check if lst2 is empty, if so return lst1 which contains what we want.
  (if(null? lst2)
     lst1
     ;otherwise check if the lead atom in lst2 is in lst1
     ;if it is, recursivly skip it.
     ;if it is not add it to lst1 and recursivly call on the cdr of lst2.
     (if (member? (car lst2) lst1)
         (union lst1 (cdr lst2))
         (union (cons (car lst2) lst1) (cdr lst2)))))


; takes two lists and returns the mathmatical intersection of them.
(define (intersect lst1 lst2)
  ;check if lst1 is null. if so, we are done.
  (if (null? lst1)
      '()
      ;check if the first atom of list 1 is in lst2. 
      ;if so hang on to the first element of lst1 and recurse on the rest.
      ;if not recurse on the cdr of lst1. 
      (if (member? (car lst1) lst2)
          (cons (car lst1) (intersect (cdr lst1) lst2))
          (intersect (cdr lst1) lst2))))

(union '(green eggs and) '(ham))
(intersect '(stewed tomatoes and macaroni) '(macaroni and cheese))

  
