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