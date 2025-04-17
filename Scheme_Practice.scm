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