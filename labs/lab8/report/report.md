---
## Front matter
title: "Лабораторная работа №"
subtitle: ""
author: "Галацан Николай, НПИбд-01-22"

## Generic otions
lang: ru-RU
toc-title: "Содержание"

## Bibliography
bibliography: bib/cite.bib
csl: pandoc/csl/gost-r-7-0-5-2008-numeric.csl

## Pdf output format
toc: true # Table of contents
toc-depth: 2
lof: true # List of figures
lot: false # List of tables
fontsize: 12pt
linestretch: 1.5
papersize: a4
documentclass: scrreprt
## I18n polyglossia
polyglossia-lang:
  name: russian
  options:
	- spelling=modern
	- babelshorthands=true
polyglossia-otherlangs:
  name: english
## I18n babel
babel-lang: russian
babel-otherlangs: english
## Fonts
mainfont: IBM Plex Serif
romanfont: IBM Plex Serif
sansfont: IBM Plex Sans
monofont: IBM Plex Mono
mathfont: STIX Two Math
mainfontoptions: Ligatures=Common,Ligatures=TeX,Scale=0.94
romanfontoptions: Ligatures=Common,Ligatures=TeX,Scale=0.94
sansfontoptions: Ligatures=Common,Ligatures=TeX,Scale=MatchLowercase,Scale=0.94
monofontoptions: Scale=MatchLowercase,Scale=0.94,FakeStretch=0.9
mathfontoptions:
## Biblatex
biblatex: true
biblio-style: "gost-numeric"
biblatexoptions:
  - parentracker=true
  - backend=biber
  - hyperref=auto
  - language=auto
  - autolang=other*
  - citestyle=gost-numeric
## Pandoc-crossref LaTeX customization
figureTitle: "Рис."
tableTitle: "Таблица"
listingTitle: "Листинг"
lofTitle: "Список иллюстраций"
lotTitle: "Список таблиц"
lolTitle: "Листинги"
## Misc options
indent: true
header-includes:
  - \usepackage{indentfirst}
  - \usepackage{float} # keep figures where there are in the text
  - \floatplacement{figure}{H} # keep figures where there are in the text
---

# Цель работы



# Теоретическое введение

 [@].

# Выполнение лабораторной работы


 (рис. [-@fig:1]).

![](image/1.png){#fig:1 width=70%}


 (рис. [-@fig:2]).

![](image/2.png){#fig:2 width=70%}


(рис. [-@fig:3]).

![](image/3.png){#fig:3 width=70%}

(рис. [-@fig:4]).

![](image/4.png){#fig:4 width=70%}

(рис. [-@fig:5]).

![](image/5.png){#fig:5 width=70%}

(рис. [-@fig:6]).

![](image/6.png){#fig:6 width=70%}

 (рис. [-@fig:7]).

![](image/7.png){#fig:7 width=70%}
 
(рис. [-@fig:8]).

![](image/8.png){#fig:8 width=70%}

 (рис. [-@fig:9]).

![](image/9.png){#fig:9 width=70%}

(рис. [-@fig:10])

![](image/10.png){#fig:10 width=70%}

 (рис. [-@fig:11]).

![](image/11.png){#fig:11 width=70%}


 (рис. [-@fig:12]).

![](image/12.png){#fig:12 width=70%}


(рис. [-@fig:13]).

![](image/13.png){#fig:13 width=70%}

(рис. [-@fig:14]).

![](image/14.png){#fig:14 width=70%}

(рис. [-@fig:15]).

![](image/15.png){#fig:15 width=70%}

(рис. [-@fig:16]).

![](image/16.png){#fig:16 width=70%}

 (рис. [-@fig:17]).

![](image/17.png){#fig:17 width=70%}
 
(рис. [-@fig:18]).

![](image/18.png){#fig:18 width=70%}

 (рис. [-@fig:19]).

![](image/19.png){#fig:19 width=70%}

(рис. [-@fig:20])

![](image/20.png){#fig:20 width=70%}




# Выводы



# Список литературы{.unnumbered}

::: {#refs}
:::
