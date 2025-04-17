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
