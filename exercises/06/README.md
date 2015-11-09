Разгледано на упражнението
==========================

* Представяне на списъци и основни операции с тях.
  * ```()`` - празен списък
  * [`(car <list>) -> <element>`](http://www.schemers.org/Documents/Standards/R5RS/HTML/r5rs-Z-H-9.html#%_idx_392) - връща „главата“ на списък
  * [`(cdr <list>) -> <list>`](http://www.schemers.org/Documents/Standards/R5RS/HTML/r5rs-Z-H-9.html#%_idx_396) - връща „опашката“ на списък
  * [`(cons <element> <list>) -> <list>`](http://www.schemers.org/Documents/Standards/R5RS/HTML/r5rs-Z-H-9.html#%_idx_390)
  * [`(append <list> <list>) -> <list>`](http://www.schemers.org/Documents/Standards/R5RS/HTML/r5rs-Z-H-9.html#%_idx_420) - „залепва“ два списъка
  * [`(list <element> <element> ... <element>) -> <list>`](http://www.schemers.org/Documents/Standards/R5RS/HTML/r5rs-Z-H-9.html#%_idx_416) - създава списък от зададени елементи (може и с ```(<element> <element> ... <element>)``, ако елементите са атоми)
  * [`(null? <list>) -> boolean`](http://www.schemers.org/Documents/Standards/R5RS/HTML/r5rs-Z-H-9.html#%_idx_410) - проверява дали нещо е празният списък
  * [`(list? <list>) -> boolean`](http://www.schemers.org/Documents/Standards/R5RS/HTML/r5rs-Z-H-9.html#%_idx_414) - проверява дали нещо е списък
- Обръщане на списък (`reverse`)
- Операции със списъци, представящи множества - `union` и `intersection`.
