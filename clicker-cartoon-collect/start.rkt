#lang racket

(provide start-forest)

(require
  (except-in clicker-lib FOREST-BG start-forest)
  (only-in cartoon-assets FOREST-BG)
  (only-in 2htdp/image crop scale scale/xy))


;Can we combine these two lines?
(define-clicker-start-f start-clicker-forest-f (crop 0 0 640 480 
                                                     (scale/xy 1.5 1
                                                               (scale 0.5 FOREST-BG))))

(define-start-binder start-forest start-clicker-forest-f)
