#lang racket 

(provide (all-from-out "./assets.rkt")
         (all-from-out common-icons)
         (all-from-out clicker-assets)
         (all-from-out animal-assets)
         (all-from-out color-strings)
         (all-from-out game-engine)
         (all-from-out game-engine-demos-common)
         bg->play-icon
         rand
         (rename-out [start-clicker-forest start-forest]
                     [start-clicker-desert start-desert]
                     [start-clicker-snow start-snow]
                     [start-clicker-lava start-lava]
                     [start-clicker-pink start-pink]))

(require "./assets.rkt"
         common-icons
         clicker-assets
         animal-assets
         (only-in color-strings
           red
           green
           blue
           yellow
           orange
           purple)
         
         (only-in 2htdp/image overlay crop)
         (only-in game-engine
                  change-img-sat
                  change-img-bright
                  draw-sprite)
         (only-in game-engine-demos-common
                  FOREST-BG
                  DESERT-BG
                  SNOW-BG
                  LAVA-BG
                  PINK-BG)
         "./clicker-lang.rkt"
         )

(define (bg->play-icon bg)
  (overlay play-outline-icon 
           ((compose (curry change-img-bright 40)
                     (curry change-img-sat -20))
            (crop 624 420 32 24 bg))))

(define rand
  (lambda () (first (shuffle (list cat dog horse rabbit
                                   apple kiwi onion potato tomato)))))
