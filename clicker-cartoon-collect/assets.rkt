#lang racket 

(provide tri
         bat
         bee
         frog
         hammer
         red-eye
         star
         (rename-out [c:meteor01 meteor]))

(require (prefix-in c: cartoon-assets)
         (only-in game-engine sheet->sprite)
         (only-in 2htdp/image scale))

(define red-eye
  (sheet->sprite
    #:rows 1
    #:columns 4
    c:redeyeguy-sheet))

(define tri
  (sheet->sprite
    #:rows 1
    #:columns 4
    c:triangleguy-sheet))

(define bat
  (sheet->sprite
    #:rows 1
    #:columns 2
    (scale 0.5 c:bat-sheet)))

(define bee
  (sheet->sprite
    #:rows 1
    #:columns 2
    (scale 0.5 c:bee-sheet)))

(define frog
  (sheet->sprite
    #:rows 1
    #:columns 2
    c:frog-sheet))

(define hammer
  (scale 0.5 c:hammer))

(define star c:star)
