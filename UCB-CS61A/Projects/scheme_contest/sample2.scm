;;; Scheme Recursive Art Contest Entry
;;;
;;; Please do not include your name or personal info in this file.
;;;
;;; Title: Okay Google
;;;
;;; Description:
;;;   <Okay google, what
;;;    should I have to eat today
;;;    Forty two pancakes>


(define (put letter x y)
  (cond
    ((null? letter) (penup))
    ((equal? (car letter) 'd) (pendown) (put (cdr letter) x y))
    ((equal? (car letter) 'u) (penup) (put (cdr letter) x y))
    (else (setposition (+ x (car letter)) (- y (car (cdr letter)))) (put (cdr (cdr letter)) x y))
  )
)

(define (string letters x y)
  (if (not (null? letters))
    (begin (put (car letters) x y)
    (string (cdr letters) (+ x 20) y))
  )
)

(define six '(14 3 d 6 3 5 17 14 17 14 11 5 9))
(define four '(5 2 d 5 9 14 9 14 2 14 18))
(define two '(3 3 d 18 3 18 11 3 11 3 18 18 18))
(define one '(6 6 d 11 2 10 17))

(define apostrophe '(9 3 d 9 9))
(define closeparen '(8 3 d 10 7 10 13 8 18))
(define semicolon '(10 3 d 10 7 u 10 10 d 11 16 9 18))
(define SPACE '())
(define dash '(5 11 d 15 11))
(define exclamation_mark '(10 3 d 10 14 u 10 16 d 10 18))
(define _A '(3 18 d 11 3 18 18 u 6 11 d 14 12))
(define _B '(4 17 d 4 2 13 3 15 6 15 9 11 11 5 11 10 12 15 13 15 16 11 17 4 17))
(define _D '(2 2 d 2 18 10 18 15 16 15 7 10 2 2 2))
(define _E '(14 3 d 5 3 6 18 14 18 u 5 11 d 10 11))
(define _L '(5 2 d 5 18 14 17))
(define _O '(13 3 d 8 3 3 8 3 13 8 17 14 18 16 14 16 7 13 3))
(define _P '(4 18 d 4 3 15 3 15 11 5 11))
(define _R '(5 18 d 5 2 13 3 16 6 15 11 13 11 5 11 13 17))
(define _T '(5 3 d 16 3 u 11 4 d 10 17))
(define a '(11 6 d 6 6 3 9 4 13 6 16 10 16 13 13 13 8 10 6 14 8 14 11 14 16 16 17))
(define b '(6 2 d 6 18 11 17 15 16 15 13 13 11 8 11))
(define c '(13 7 d 6 7 4 12 5 16 6 18 13 17))
(define d '(13 8 d 8 8 4 9 4 12 4 16 6 17 9 17 13 17 14 2))
(define e '(6 11 d 15 11 14 6 8 6 8 16 14 16))
(define f '(3 18 d 6 16 8 4 11 3 u 6 11 d 11 11))
(define g '(11 3 d 6 3 4 7 4 11 8 12 11 12 13 4 13 17 10 18 8 18 6 16))
(define h '(6 3 d 6 17 u 6 11 d 13 11 13 17))
(define i '(9 17 d 10 9 u 10 6 d 10 4))
(define j '(5 17 d 10 16 10 8 u 10 6 d 10 3))
(define k '(6 18 d 6 12 10 8 u 10 17 d 6 12 6 4))
(define l '(6 4 d 6 17 10 17))
(define m '(4 18 d 4 9 8 6 10 8 10 12 11 8 15 6 16 8 16 17))
(define n '(4 17 d 5 11 9 8 13 9 15 11 14 17))
(define o '(5 7 d 5 13 8 16 14 16 15 14 15 8 13 6 9 6 5 7))
(define p '(5 19 d 6 7 11 7 11 11 6 12))
(define r '(4 7 d 6 8 6 18 6 11 9 9 13 9))
(define s '(14 8 d 11 6 9 6 6 7 4 9 6 12 10 14 14 14 14 17 11 18 9 18 6 18 5 17))
(define t '(9 17 d 10 4 u 6 8 d 13 7))
(define u '(5 8 d 5 14 8 16 13 16 15 14 16 9))
(define v '(3 8 d 9 16 15 9))
(define w '(4 8 d 6 17 10 13 14 16 18 9))
(define x '(5 8 d 14 17 u 5 17 d 14 8))
(define y '(8 7 d 14 13 19 8 u 14 13 d 9 18))
(define z '(6 8 d 15 8 6 17 13 17))

(define (lupa x y)
  (setposition x y)
  (color "#9aa0a6")
  (setheading -45)
  (pendown)
  (forward 10)
  (right 90)
  (circle 5)
  (penup)
)

(define (clock x y)
  (setposition (- x 2) (+ y 10))
  (color "#9aa0a6")
  (setheading 0)
  (pendown)
  (circle 7)
  (penup)
  (left 90)
  (forward 7)
  (right 90)
  (pendown)
  (forward 5)
  (penup)
  (backward 5)
  (right 125)
  (pendown)
  (forward 3)
  (penup)
)

(define (draw)
  ; YOUR CODE HERE
  (bgcolor "white")
  ;(hideturtle)

  (define green "#3cba54")
  (define yellow "#f4c20d")
  (define red "#db3236")
  (define blue "#4885ed")

  (penup)

  (color blue)
  (setposition -98 73)
  (begin_fill)
  (circle 40 -310)
  (left 90)
  (forward 10)
  (right 90)
  (circle 30 297)
  (setheading 270)
  (forward 30)
  (right 90)
  (forward 10)
  (right 90)
  (forward 40)
  (end_fill)

  (color red)
  (setposition -90 60)
  (begin_fill)
  (setheading 180)
  (circle 30)
  (left 90)
  (forward 10)
  (right 90)
  (circle 20)
  (end_fill)

  (color yellow)
  (setposition -20 60)
  (begin_fill)
  (setheading 180)
  (circle 30)
  (left 90)
  (forward 10)
  (right 90)
  (circle 20)
  (end_fill)

  (color blue)
  (setposition 50 60)
  (begin_fill)
  (setheading 180)
  (circle 30)
  (left 90)
  (forward 10)
  (right 90)
  (circle 20)
  (end_fill)

  (left 90)
  (forward 40)
  (left 90)
  (begin_fill)
  (forward 30)
  (right 90)
  (forward 10)
  (right 90)
  (forward 60)
  (right 180)
  (circle 31 -150)
  (left 70)
  (forward 10)
  (right 70)
  (circle 21 150)
  (forward 50)
  (end_fill)

  (setposition 122 113)
  (color green)
  (setheading 90)
  (begin_fill)
  (forward 10)
  (right 90)
  (forward 80)
  (right 90)
  (forward 10)
  (right 90)
  (forward 80)
  (end_fill)

  (setposition 194 42)
  (color red)
  (setheading 45)
  (begin_fill)
  (circle 30 -305)
  (left 95)
  (forward 50)
  (right 90)
  (forward 10)
  (right 90)
  (forward 40)
  (right 90)
  (forward 8)
  (right 180)
  (circle 20 305)
  (end_fill)

  (setposition -316 -37)
  (setheading 90)
  (color "#dfe1e5")
  (pendown)
  (forward 665)
  (right 180)
  (circle 20 -180)
  (right 180)
  (forward 665)
  (right 180)
  (circle 20 -180)
  (penup)

  (lupa -300 -65)
  (setposition -280 -47)
  (color "#000000")
  (string (list four two apostrophe closeparen semicolon SPACE _D _R _O _P SPACE _T _A _B _L _E SPACE g r a d e s semicolon dash dash) -280 -47)

  (setposition -336 -54)
  (setheading 180)
  (color "#dfe1e5")
  (pendown)
  (forward 200)
  (circle 20 90)
  (forward 665)
  (circle 20 90)
  (forward 200)
  (penup)


  (clock -300 -105)
  (color "#52188c")
  (string (list l e a r n SPACE p y t h o n SPACE i n SPACE t e n SPACE m i n u t e s) -280 -87)

  (clock -300 -135)
  (color "#52188c")
  (string (list d e n e r o SPACE h a l l o w e e n SPACE v i d e o) -280 -117)

  (lupa -300 -165)
  (color "#000000")
  (string (list w h a t SPACE b r a n d SPACE o f SPACE t o i l e t SPACE p a p e r SPACE a r e SPACE u) -280 -147)

  (lupa -300 -195)
  (color "#000000")
  (string (list i s SPACE w a t e r SPACE w e t) -280 -177)

  (lupa -300 -225)
  (color "#000000")
  (string (list w h a t SPACE i s SPACE l i f e) -280 -207)

  (lupa -300 -255)
  (color "#000000")
  (string (list g o SPACE b e a r s exclamation_mark) -280 -237)

  (setposition -388 -500)
  (begin_fill)
  (setheading 0)
  (forward 857)
  (right 180)
  (circle 100 -90)
  (backward 610)
  (circle 100 -90)
  (backward 857)
  (left 90)
  (forward 20)
  (right 90)
  (forward 827)
  (circle 80 90)
  (forward 610)
  (circle 80 90)
  (forward 827)
  (end_fill)

  (exitonclick))

; Please leave this last line alone.  You may add additional procedures above
; this line.
(draw)