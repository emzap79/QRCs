# About

This is a collection of my Quick Reference Cards ("QRCs") on diverse code and
linux related terminal commands. Please have a look at the copyrightnotice
above and feel free to contact the author before you consider their use on
commercial purpose.

## Content

My repo contains qrc's, based on the following issues

- R
- GIT
- TMUX
- CLI (*Shell*)
- VIM
- VIMPERATOR (*Firefox Extension*)
- MIDNIGHT COMMANDER

## Create PDF

Compile them via: `pdftex qrc.tex` (or execute the provided Makefile). Clone
this repo like so:

    gitdir="$HOME/.gitclones/qrc" && mkdir -p $gitdir
    git clone https://github.com/emzap79/QRCs.git $gitdir

Now change into the new created directory (`cd $gitdir`) and run `make <name>`,
eg. `make tmux`. It will run on the tex-file, showing its result in your
systems default pdf-reader.

You may as well use the already compiled version of my Cheat Sheets, without the need of
compiling them by yourself! In that case, guide yourself to the direct link of
the *Raw PDF File*. Please feel free to contact me or sending me pull-requests.

## Author

< empzap79 [at] gmail [dot] com >

## Licence Agreement

Cheat Sheets on different command line topics, mostly related to Linux.
Copyright (C) 2014 Jonas Petong

This program is free software: you can redistribute it and/or modify it under
the terms of the GNU General Public License as published by the Free Software
Foundation, either version 3 of the License, or (at your option) any later
version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY
WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A
PARTICULAR PURPOSE.  See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License along with
this program.  If not, see <http://www.gnu.org/licenses/>.
