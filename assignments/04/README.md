Поток от функции
================
На езика Racket да се напише процедера `(construct-stream n)`, която връща поток. На `i`-та позиция в този поток трябва да се връща функцията `f(x) = i * n + x`.

Индексирането започва от 0 (вижте примера).

*Приемат се решения само и единствено на Racket.*

Примери
-------

`((stream-ref (construct-stream 0) 2) 7) -> 7 (= 2 * 0 + 7)`

`((stream-ref (construct-stream 2) 0) 7) -> 7 (= 0 * 2 + 7)`

`((stream-ref (construct-stream 0) 0) 0) -> 0 (= 0 * 0 + 0)`

`((stream-ref (construct-stream 1) 1) 4) -> 5 (= 1 * 1 + 4)`

`((stream-ref (construct-stream 5) 3) 4) -> 19 (= 3 * 5 + 4)`
