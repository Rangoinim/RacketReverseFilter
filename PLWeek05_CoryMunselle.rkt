#lang racket
(define (oddRevList basicList)
  ; basic function to be called
    (define (reverse origList reversedList)
      ; So I couldn't figure out how to do it without making a separate list and transferring the contents to it.
      ; I presume it's possible, but since cons wasn't working the way I wanted it to and I wanted to get the
      ; assignment done, I said screw it and did it this way. If you can share the way you did it I would like to see it.
        (if (null? origList)
            ; Instead of doing equal? I did null? because, well, that's the first thing my brain thought of haha
            ; I could do equal? null and just flip the expressions
            (filter odd? reversedList)
            ; Slightly cheaty trick I found on the racket documentation that allows you to filter out contents
            ; in a list based on a supplied procedure. Saved me from having to make a second function to strip even numbers.
            (reverse (cdr origList) (cons (car origList) reversedList))))
            ; transfer contents of original list by passing cdr (origList) into the recursive function (making the origList
            ; smaller) and passing the first value of origList into the reversedList function
    (reverse basicList '()))

(oddRevList '(1 2 3 4 5 6 7 8))

(oddRevList '(3 5 2 3 7 1 2 3 1 8))

(oddRevList '(3 8 4 2 8 2 4 9 3 21 2 8 4 58 7 65 153 84 12 32 87 345 123 84 53 3 102 4 86 65 13 47 354))

(oddRevList '())