;Function for calculating the Volume of a sphere
; 1 Recives one parameter, the radius of the sphere
; 2 Calculates the volume using the formula V = (4/3) * pi * r^3
; 3 Returns the volume of the sphere 

(define (sphereVolume r)

    (if (< r 0) 
        0
    )

    (let 
        (   
            (pi 3.14)
            (cubed (* r r r))
            (div (/ 4 3))
        )

        (display (* div pi cubed))
    )

)

(display (sphereVolume 3)) ; Expected output: 113.04
(display (sphereVolume -3)) ; Expected output: 0

;using a cond if the radius is negative
(define (sphereVolume r)
    (cond
        ((< r 0) 0)
        (else
            (let
                (
                    (pi 3.14)
                    (cubed (* r r r))
                    (div (/ 4 3))
                )

                (display (* div pi cubed))
            )
        )
    )
)

(display (sphereVolume 3)) ; Expected output: 113.04

;Function for calculating the Volume of a Cone.
;The function will take two parameters.Both parameters are numeric values, the
; first representing the radius of the cone’s base, and the second representing the height of the cone. The function
; should yield the volume of the cone with the provided radius and height.
; V = pi*r^2*(h/3)

(define (coneVolume r h)
    (if (or (< h 0) (< r 0))
        display 0
    )

    (let
        (
            (pi (/ 22 7))
            (squared (* r r))
            (div (/ h 3))
        )
        (display (* pi squared div))
    )
)

(coneVolume 3.2 1.8)

;#############The Following Function will explore RECURSION in scheme. ##########

;Function of r counting Positive Even numbers.. The function will only receive one parameter.
;The parameter is a simple list(i.e a list containing only atoms).

(define (countPositiveEvenNumbers list)
    (cond
        ((null? list) 0)
        ((and (> (car list) 0) (even? (car list))) (+ 1 (countPositiveEvenNumbers (cdr list))))
        (else (countPositiveEvenNumbers (cdr list)))
    )
)

(display (countPositiveEvenNumbers '(1 2 3 4 5 6))) ; Expected output: 3

;Function for counting Negatives numbers. The function will only receive one parameter.
;The parameter is a simple list(i.e a list containing only atoms excluding zero).

(define (countNegatives list)
    (cond
        ((null? list) 0)
        ((< (car list) 0) (+ 1 (countNegatives(cdr list))))
        (else (countNegatives (cdr list)))
    ) 
)

(display (countNegatives ’(-1 20 -30 2 -5 40 10 -60))) ; Expected output: 4
(display (countNegatives ’(1 2 3 4 5))) ; Expected output: 0

;Function to count every Odd element in a list.
;The function will only receive one parameter a simple list(i.e a list containing only atoms).

(define (getEveryOddElement list) ; get the element at every odd index

    (cond 

        ((null? list) '())

        ((null? (cdr list)) (cons (car list) (cdr list)))

        (else (cons (car list) (getEveryOddElement (cdr (cdr list)))))
        

    )
)

(display (getEveryOddElement '(1 2 3 4 5))) ; Expected output: (1 3 5)


;Function to get every Even element in a list.
;The function will only receive one parameter a simple list(i.e a list containing only atoms).
(define (getEveryEvenElement list)
    (cond 
    ((null? list) '())                             
    ((null? (cdr list)) '())                       
    (else (cons (car (cdr list)) (getEveryEvenElement (cdr (cdr list)))))
    )
)

(display (getEveryEvenElement '(1 2 3 4 5))) ; Expected output: (2 4)


;The following function will return the last element of a list.
;The function will only receive one parameter a simple list(i.e a list containing only atoms).
(define (last array)

    (cond

        ((null? array) '())

        ((null? (cdr array)) (car array))

        (else (last (cdr array)))
    )
)

(last '(a b c d e)) ; Output: e
(last '(1))         ; Output: 1
(last '())          ; Output: ()

;Function named sumBetween that is applied to two
;parameters called first and second. Assume that both first and second are
; numeric integer literals and that the value fof first is less than the value of second
; The function should return the sum of all the integers between first and second, inclusive.

(define (sumBetween first second)
(cond
    ((= first second) first)
    (else (+ first (sumBetween (+ first 1) second)))
)
)

(display (sumBetween 1 5)) ; Expected output: 15 (1 + 2 + 3 + 4 + 5)
(display (sumBetween 3 7)) ; Expected output: 25 (3 + 4 + 5 + 6 + 7)


;Function that add all the numeral elements in a list.
;The function will only receive one parameter a simple list(i.e a list containing only atoms).

(define (addElements lis)
    (cond
        ((null? lis) 0)
        (else (+ (car lis) (addElements(cdr lis))))
    )
)

(display (addElements '(1 2 3))) ; Expected output: 6
(display (addElements '(1 2 3 4 5))) ; Expected output: 15

(display (addElements '())) ; Expected output: 0
(display (addElements '(1))) ; Expected output: 1
