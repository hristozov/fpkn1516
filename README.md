λ (2015/2016)
=============

[![Build Status](https://travis-ci.org/hristozov/fpkn1516.svg)](https://travis-ci.org/hristozov/fpkn1516)

Тук са събрани помощни материали за упражненията по Функционално програмиране за специалност Компютърни науки през учебната 2015/2016 във [ФМИ](https://www.fmi.uni-sofia.bg). Това хранилище спомага учебните занятия на 5-та и 6-та група на 2-ри поток (при [проф. Магдалина Тодорова](https://www.fmi.uni-sofia.bg/bg/lecturers/ci/magda)), но може да бъде използвано от всички студенти, изучаващи Функционало програмиране във ФМИ.

Moodle курсът може да бъде намерен [тук](http://moodle.openfmi.net/enrol/index.php?id=995). В него могат да бъдат намерени по-важните съобщения, свързани с учебната дейност. Хранилището с кода от миналогодишния курс можете да намерите [тук](https://github.com/hristozov/fpkn1415).

Кодът на Scheme е базиран на R5RS стандарта (с много малка част на Racket), а този на Haskell - на Haskell 98.

Структура
=========

* Материалите за различните упражнения (планове на разгледаното и решения на задачите) са в директорията [/exercises](/exercises).
* Заданията за домашна работа и инструкции как да бъдат изпратени са в директорията [/assignments](/assignments).
* Задачите от контролните са в директорията [/tests](/tests).

В някои от директориите има скриптове на име `run.sh`. Те служат за изпълнение на тестовете за кода, публикуван тук.

Среда за разработка
===================

### Scheme

Racket дистрибуция може да бъде свалена от [официалния сайт на Racket](http://racket-lang.org). Ако не ви се инсталира Racket, можете да ползвате уеб-базирания [repl.it](http://repl.it/languages). Обърнете внимание, че repl.it е базиран на R6RS стандарта и има някои дребни разминавания с R5RS. Въпреки това, той може да бъде използван за решаване на задачи без големи проблеми.

Ако ползвате DrRacket, не забравяйте първо да сложите R5RS за език, тъй като той не е зададен по подразбиране. Това става от менюто Language -> Choose Language -> Other Languages -> R5RS.

### Haskell

За да пишете на Haskell, можете да си свалите [WinHugs](https://www.haskell.org/haskellwiki/WinHugs) и с него да зареждате `.hs` файловете. Друг вариант е да използвате [ghc](https://www.haskell.org/ghc/) пакета, съдържащ компилатор и интерактивна среда. За редактиране на Haskell код може да ви бъде удобен [Sublime Text](http://www.sublimetext.com/), който може да бъде надграден със [SublimeHaskell](https://github.com/SublimeHaskell/SublimeHaskell).

Контакт
=======

Мейлът ми е [georgi@forkbomb.nl](mailto:georgi@forkbomb.nl). Можете да ми пишете с всякакви въпроси, забележки и коментари, дори да не сте от групите на които преподавам.

За грешки
=========
Ако откриете нещо, което според вас не е наред, не се притеснявайте да направите едно от следните неща:

 * да създадете issue [тук](https://github.com/hristozov/fpkn1516/issues) с описание какво точно не е наред
 * да ми [напишете мейл](mailto:georgi@forkbomb.nl)

Благодаря предварително!

Литература
==========
Ресурсите по-долу са безплатни. Можете да намерите още препоръчана литература в анотацията на курса.

### Scheme
 * [Structure and Interpretation of Computer Programs (SICP)](https://mitpress.mit.edu/sicp/)
 * [R5RS стандарт](http://www.schemers.org/Documents/Standards/R5RS/HTML/)

### Haskell
 * [Learn You a Haskell for Great Good!](http://learnyouahaskell.com/chapters)
 * [Haskell 98 стандарт](https://www.haskell.org/onlinereport/)
