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

(same commands as easy copy + paste oneliner :relaxed:)

    gitdir="$HOME/.gitclones/qrc" && mkdir -p $gitdir && cd $gitdir && git clone https://github.com/emzap79/QRCs.git .

Now change into the directory where the QRC is located (`cd $gitdir`) and run
`make <name>` eg. `make tmux`. It will compile the tex-file, showing the
result in a pdf-reader of your choice; since all of my qrc's use the same
stylesheet, most probably it shows some `Over-/Underfull` Boxes.

Please feel free to contact me or sending me pull-requests! I'll try to get rid
of them in the nearer future, anyways. You can indeed use the PDF version of my
files, without the need to compile the TeX-file by yourself!

## License Agreement

MIT License

Permission is hereby granted, free of charge, to any person obtaining a copy of
this software and associated documentation files (the "Software"), to deal in
the Software without restriction, including without limitation the rights to
use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies
of the Software, and to permit persons to whom the Software is furnished to do
so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
