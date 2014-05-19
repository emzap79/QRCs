# QRCs

This is a collection of my quick reference cards ("cheat sheets") on diverse
code and linux related terminal commands. In all cases they existed before I
took my 'final shape' on them, so please have a look on the regarding
copyrightnotice before you consider to distribute or forking them.

## Content

My repo contains qrc's of the following issues

- R
- GIT
- TMUX
- CLI (*Bash*)
- VIM

## Create PDF

Compile them via: `pdftex qrc.tex` or use the provided Makefile. You must clone
the repo first, as you probably'd have imagined:

    gitdir="$HOME/.gitclones/qrc"
    mkdir -p $gitdir && cd $gitdir
    git clone https://github.com/emzap79/QRCs.git .

(Here the easy copy, paste oneliner for the lazy :relaxed:)

    gitdir="$HOME/.gitclones/qrc" && mkdir -p $gitdir && cd $gitdir && git clone https://github.com/emzap79/QRCs.git .

Now change into the directory where the QRC is located (`cd $gitdir`) and run
`make <name>` eg. `make tmux`. It will compile the tex-file, showing the
result in a pdf-reader of your choice; since all of my qrc's use the same
stylesheet, most probably it shows some `Over-/Underfull` Boxes.

Please feel free to contact me or sending me pull-requests! I'll try to get rid
of them in the nearer future, anyways. You can indeed use the PDF version of my
files, without the need to compile the TeX-file by yourself!

## License Agreement

"THE BEER-WARE LICENSE" (Revision 42):
<emzap79 at gmail dot com> wrote this file. As long as you retain this notice you
can do whatever you want with this stuff. If we meet some day, and you think
this stuff is worth it, you can buy me a beer in return Jonas Petong


