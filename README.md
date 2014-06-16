# About

This is a collection of my Quick Reference Cards ("QRCs") on diverse
code and linux related terminal commands. Please have a look on the regarding
copyrightnotice before you consider their use for commercial purpose.

## Content

My repo contains qrc's based on the following issues

- R
- GIT
- TMUX
- CLI (*Bash*)
- VIM
- VIMPERATOR (*Firefox Extension*)
- Midnight Commander

## Create PDF

Compile them via: `pdftex qrc.tex` (or execute the provided Makefile). Clone this repo like so:

    gitdir="$HOME/.gitclones/qrc" && mkdir -p $gitdir
    git clone https://github.com/emzap79/QRCs.git $gitdir

Now change into the new created directory (`cd $gitdir`) and run `make <name>`,
eg. `make tmux`. It will compile the tex-file, showing its result in your
systems default pdf-reader.

You may as well use the PDF version of my Cheat Sheets, without the need of
producing them by yourself! In that case, guide yourself to the direct link of
the *Raw File*. Please feel free to contact me or sending me pull-requests.

## Author

< empzap79 [at] gmail [dot] com >

## Licence Agreement

Copyright 2014 Jonas Petong

Licensed under the "THE BEER-WARE LICENSE" (Revision 42):
emzap79 wrote this file. As long as you retain this notice you
can do whatever you want with this stuff. If we meet some day, and you think
this stuff is worth it, you can buy me a beer or coffee in return
