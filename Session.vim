let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
inoremap <silent> <Plug>NERDCommenterInInsert  <BS>:call NERDComment(0, "insert")
inoremap <silent> <C-S-Tab> =UltiSnips#ListSnippets()
inoremap <silent> <S-Tab> =UltiSnips#ExpandSnippet()
inoremap <F10> :call ToggleYCM()
inoremap <C-S-F9> :call TogglePaste()
inoremap <C-F9> :call ToggleFoldColumn()
inoremap <F9> :call ToggleTextwidth()
inoremap <M-S-F8> :call AutoCorrect()
inoremap <M-F8> :w !detex | wc -w
inoremap <C-F8> :w!:!/usr/bin/aspell --dont-backup --dont-tex-check-comments check %:e! %
inoremap <F8> :call ToggleSpell()
inoremap <S-F7> :LanguageToolCheck:vertical  lopen  80
inoremap <F7> :'a,'sLanguageToolCheck:vertical  lopen  80
inoremap <C-S-F6> :BundleInstall!
inoremap <S-F6>  :BundleInstall
inoremap <C-F6> :BundleClean!
inoremap <F6> :BundleList
inoremap <F5> :FufMruFile
inoremap <C-F4> :FufFile
inoremap <S-F4> :FufFileWithFullCwd
inoremap <F4> :FufFileWithCurrentBufferDir
inoremap <S-F3> :buffer
inoremap <F3> :FufBuffer
inoremap <C-S-F2> :mks!:wqall!
inoremap <silent> <F2> :exe "mks\! | w | so $MYVIMRC | %foldo!"
inoremap <S-F1> :echo expand('%:p')
inoremap <C-F1> :lcd %:p:h:echo expand('%:p')
inoremap <F1> :lcd %:p:h:echo expand('%:p')
nnoremap <silent>  :call AddSubtract("\", '')
snoremap <silent>  c
nnoremap <silent>  :TmuxNavigateLeft
nnoremap <silent> <NL> :TmuxNavigateDown
nnoremap <silent>  :TmuxNavigateUp
nnoremap <silent>  :TmuxNavigateRight
nnoremap  :call CurPos("save")$p :call CurPos("restore")
vnoremap  <Plug>(expand_region_shrink)
nnoremap  V
nnoremap <silent>  :call AddSubtract("\", '')
nmap - hEa <- 
vmap b <Plug>RDSendMBlock
nmap b <Plug>RDSendMBlock
vmap p <Plug>RDSendSelection
nmap p <Plug>RDSendParagraph
vmap l <Plug>RDSendSelection
nmap l <Plug>RDSendLine
nnoremap <silent>  :nohl
nnoremap ß :b #
nnoremap <silent>  :TmuxNavigatePrevious
map  Htd <Plug>AM_Htd
map  rwp <Plug>RestoreWinPosn
map  swp <Plug>SaveWinPosn
nmap  ca <Plug>NERDCommenterAltDelims
vmap  cA <Plug>NERDCommenterAppend
nmap  cA <Plug>NERDCommenterAppend
vmap  c$ <Plug>NERDCommenterToEOL
nmap  c$ <Plug>NERDCommenterToEOL
vmap  cn <Plug>NERDCommenterNest
nmap  cn <Plug>NERDCommenterNest
vmap  cb <Plug>NERDCommenterAlignBoth
nmap  cb <Plug>NERDCommenterAlignBoth
vmap  cm <Plug>NERDCommenterMinimal
nmap  cm <Plug>NERDCommenterMinimal
vmap  c  <Plug>NERDCommenterToggle
nmap  c  <Plug>NERDCommenterToggle
vmap  cc <Plug>NERDCommenterComment
nmap  cc <Plug>NERDCommenterComment
nmap <silent>  ns :%!spamassassin -d  " removes all SpamAssassin markup from the message inside of *mutt*
nnoremap  m :'a,'s
vnoremap  p :'{,'}
nnoremap  p :'{,'}
vnoremap  s :'(,')
nnoremap  s :'(,')
vnoremap  v :'<,'>
nnoremap  pp :RunSilent gnome-open /tmp/vim-pandoc-out.pdf
nnoremap  cp :RunSilent pandoc -o /tmp/vim-pandoc-out.pdf %
vnoremap  cx :XeLatexCompilePDF
nnoremap  cx :XeLatexCompilePDF
vnoremap  cl :LatexCompilePDF
nnoremap  cl :LatexCompilePDF
vnoremap  ct :TexCompilePDF
nnoremap  cr :RnwCompilePDF
nnoremap  ct :TexCompilePDF
nnoremap <silent>  da :%s/\s\s\+/ /g:nohl``
nnoremap <silent>  d$ :let _s=@/|:%s/\s\+$//e|:let @/=_s|:nohl``
nnoremap <silent>  d0 :'{,'}s/^\s\+//g:nohl``
vnoremap <silent>  dv :B s/\s\s\+/ /g:nohl
nnoremap <silent>  dp :'{,'}s/\s\s\+/ /g:nohl``
nnoremap <silent>  dd :exe '%g/^\(.*\)\(\r\?\n\1\)\+$/d | %!uniq'``
xnoremap  R :%s/=GetVisualSelection()/
xnoremap  r :'{,'}s/=GetVisualSelection()/
nnoremap  R :%s/\<=expand('<cWORD>')\>/
nnoremap  r :'{,'}s/\<=expand('<cWORD>')\>/
nnoremap  X #``cgN
nnoremap  x *``cgn
nnoremap <silent>  uu mz :s/\<\w\+/\u\0/g:nohl`z
nnoremap <silent>  u^ :normal! mz^gUl`z:nohl
nnoremap <silent>  u :normal! mzlbgUl`z:nohl
nnoremap  fh :Mirror
vnoremap  thes :!othes =getvisualselection()
nnoremap  thes :exe "!thes " . shellescape(expand("<cword>"))
vnoremap  dict :!dict =getvisualselection()
nnoremap  dict :exe "!dict " . shellescape(expand("<cword>"))
vnoremap  ding :!ding =getvisualselection()
nnoremap  ding :exe "!ding " . shellescape(expand("<cword>"))
nnoremap  as :let @/.='\|\<'.expand("<cword>").'\>'
nnoremap  ft :! firefox 'http://tex.stackexchange.com/search?q==tex()'
nnoremap  fw :! firefox 'http://de.wikipedia.org/w/index.php?search==wikipedia()'
nnoremap <silent>  - :exe "vert resize " . (winwidth(0) * 2/3)
nnoremap <silent>  + :exe "vert resize " . (winwidth(0) * 3/2)
nnoremap  vb :lcd %:p:h:vertical sb 
nnoremap  v :'<,'>
nnoremap  ht :helptags ~/.vim/doc
nnoremap  vf :ldc %:p:h:vertical find 
nnoremap  e :lcd %:p:h:e 
vnoremap  co :call Wipeout()
nnoremap  co :call Wipeout()
vnoremap  ss :lcd %:p:h:so Session.vim
nnoremap  ss :lcd %:p:h:so Session.vim
nnoremap <silent>  pw :call DoWindowSwap()
nnoremap <silent>  mw :call MarkWindowSwap()
vnoremap <silent>  fk :normal pzf'a
nnoremap <silent>  fk :normal pzf'a
nnoremap <silent>  fl :normal yyma
nnoremap <silent>  fo :exe "%s/\\v^.*(\\}\\}\\})/\\r\&/g | %v/}}}\\n.*{{{/s/\\v(\\{\\{\\{)/&\\r/g | %s/^$\\n^$//g"
vnoremap <silent>  md :exe 'delm! | delm A-Z0-9 | echom "all marks removed!"'
nnoremap <silent>  md :exe 'delm! | delm A-Z0-9 | echom "all marks removed!"'
vnoremap <silent>  mn :NoShowMarks
nnoremap <silent>  mn :NoShowMarks
vnoremap <silent>  ms :DoShowMarks
nnoremap <silent>  ms :DoShowMarks
nnoremap  gpl :Dispatch! git pull
nnoremap  gps :Dispatch! git push
nnoremap  go :Git checkout 
nnoremap  gb :Git branch 
nnoremap  gm :Gmove 
nnoremap  gp :Ggrep 
nnoremap  gl :silent! Glog:bot copen
nnoremap  gw :Gwrite
nnoremap  gr :Gread
nnoremap  ge :Gedit
nnoremap  gd :exe "Gdiff | %foldo!"
nnoremap  gt :Gcommit -v -q %:p
nnoremap  gc :Gcommit -v -q
nnoremap  gs :Gstatus
nnoremap  ga :Git add %:p
vnoremap  fr :frisk =GetVisualSelection()
nnoremap  fr :frisk -
vnoremap  av :AlignCtrl v 
nnoremap  av :AlignCtrl v 
vnoremap  ag :AlignCtrl g 
nnoremap  ag :AlignCtrl g 
vnoremap  ap :'{,'}Align! p
nnoremap  ap :'{,'}Align! p
vnoremap  al :'<,'>Align! p
nnoremap  al :'a,'sAlign! p
nnoremap  aa :%Align! p
nnoremap  slc :scalcvsplit
nnoremap  clc :calc
vnoremap  lt :call ListTrans_toggle_format('visual')
nnoremap  lt :call ListTrans_toggle_format()
nnoremap <silent>   :call AddSubtract("\", 'b')
nnoremap <silent>   :call AddSubtract("\", 'b')
nnoremap  slp :lcd %:p:h  "set local path of currently edited file.
nnoremap  sp :cd %:p:h 
nnoremap <silent>  ep :sp ~/.vim/vimrc_plugs
nnoremap <silent>  et :sp ~/.vim/after/ftplugin/tex.vim
nnoremap <silent>  er :sp ~/.vim/after/ftplugin/r.vim
nnoremap <silent>  em :sp ~/.vim/vimrc_mutt
nnoremap <silent>  eb :sp ~/.vim/vimrc_mappings
nnoremap <silent>  ec :sp ~/.vim/vimrc_colors
nnoremap <silent>  ea :sp ~/.vim/plugin/vim-autocorrect/plugin/autocorrect.vim
nnoremap <silent>  ef :sp ~/.vim/vimrc_foldexpr
nnoremap <silent>  ee :sp ~/.vim/vimrc_general
nnoremap <silent>  es :UltiSnipsEdit
nnoremap <silent>  erc :sp ~/.vimrc
vnoremap  P "+P
nnoremap  P "+P
vnoremap  d "+d
vnoremap  y "+y
vnoremap    :wall!
nnoremap    :wall!
nnoremap ++ vip++
vnoremap <expr> ++ VMATH_YankAndAnalyse()
vmap <silent> ,tt :call AlignMaps#Vis("tt")
nmap ,tt <Plug>AM_tt
vmap <silent> ,tsq :call AlignMaps#Vis("tsq")
nmap ,tsq <Plug>AM_tsq
vmap <silent> ,tsp :call AlignMaps#Vis("tsp")
nmap ,tsp <Plug>AM_tsp
vmap <silent> ,tml :call AlignMaps#Vis("tml")
nmap ,tml <Plug>AM_tml
vmap <silent> ,tab :call AlignMaps#Vis("tab")
nmap ,tab <Plug>AM_tab
vmap <silent> ,m= :call AlignMaps#Vis("m=")
nmap ,m= <Plug>AM_m=
vmap <silent> ,tW@ :call AlignMaps#Vis("tW@")
nmap ,tW@ <Plug>AM_tW@
vmap <silent> ,t@ :call AlignMaps#Vis("t@")
nmap ,t@ <Plug>AM_t@
vmap <silent> ,t~ :call AlignMaps#Vis("t~")
nmap ,t~ <Plug>AM_t~
vmap <silent> ,t? :call AlignMaps#Vis("t?")
nmap ,t? <Plug>AM_t?
vmap <silent> ,w= :call AlignMaps#Vis("w=")
nmap ,w= <Plug>AM_w=
vmap <silent> ,ts= :call AlignMaps#Vis("ts=")
nmap ,ts= <Plug>AM_ts=
vmap <silent> ,ts< :call AlignMaps#Vis("ts<")
nmap ,ts< <Plug>AM_ts<
vmap <silent> ,ts; :call AlignMaps#Vis("ts;")
nmap ,ts; <Plug>AM_ts;
vmap <silent> ,ts: :call AlignMaps#Vis("ts:")
nmap ,ts: <Plug>AM_ts:
vmap <silent> ,ts, :call AlignMaps#Vis("ts,")
nmap ,ts, <Plug>AM_ts,
vmap <silent> ,t= :call AlignMaps#Vis("t=")
nmap ,t= <Plug>AM_t=
vmap <silent> ,t< :call AlignMaps#Vis("t<")
nmap ,t< <Plug>AM_t<
vmap <silent> ,t; :call AlignMaps#Vis("t;")
nmap ,t; <Plug>AM_t;
vmap <silent> ,t: :call AlignMaps#Vis("t:")
nmap ,t: <Plug>AM_t:
vmap <silent> ,t, :call AlignMaps#Vis("t,")
nmap ,t, <Plug>AM_t,
vmap <silent> ,t# :call AlignMaps#Vis("t#")
nmap ,t# <Plug>AM_t#
vmap <silent> ,t| :call AlignMaps#Vis("t|")
nmap ,t| <Plug>AM_t|
vmap <silent> ,T~ :call AlignMaps#Vis("T~")
nmap ,T~ <Plug>AM_T~
vmap <silent> ,Tsp :call AlignMaps#Vis("Tsp")
nmap ,Tsp <Plug>AM_Tsp
vmap <silent> ,Tab :call AlignMaps#Vis("Tab")
nmap ,Tab <Plug>AM_Tab
vmap <silent> ,TW@ :call AlignMaps#Vis("TW@")
nmap ,TW@ <Plug>AM_TW@
vmap <silent> ,T@ :call AlignMaps#Vis("T@")
nmap ,T@ <Plug>AM_T@
vmap <silent> ,T? :call AlignMaps#Vis("T?")
nmap ,T? <Plug>AM_T?
vmap <silent> ,T= :call AlignMaps#Vis("T=")
nmap ,T= <Plug>AM_T=
vmap <silent> ,T< :call AlignMaps#Vis("T<")
nmap ,T< <Plug>AM_T<
vmap <silent> ,T; :call AlignMaps#Vis("T;")
nmap ,T; <Plug>AM_T;
vmap <silent> ,T: :call AlignMaps#Vis("T:")
nmap ,T: <Plug>AM_T:
vmap <silent> ,Ts, :call AlignMaps#Vis("Ts,")
nmap ,Ts, <Plug>AM_Ts,
vmap <silent> ,T, :call AlignMaps#Vis("T,")
nmap ,T, <Plug>AM_T,
vmap <silent> ,T# :call AlignMaps#Vis("T#")
nmap ,T# <Plug>AM_T#
vmap <silent> ,T| :call AlignMaps#Vis("T|")
nmap ,T| <Plug>AM_T|
vmap <silent> ,anum :call AlignMaps#Vis("anum")
nmap ,anum <Plug>AM_anum
vmap <silent> ,aenum :call AlignMaps#Vis("aenum")
nmap ,aenum <Plug>AM_aenum
vmap <silent> ,aunum :call AlignMaps#Vis("aunum")
nmap ,aunum <Plug>AM_aunum
vmap <silent> ,afnc :call AlignMaps#Vis("afnc")
nmap ,afnc <Plug>AM_afnc
vmap <silent> ,adef :call AlignMaps#Vis("adef")
nmap ,adef <Plug>AM_adef
vmap <silent> ,adec :call AlignMaps#Vis("adec")
nmap ,adec <Plug>AM_adec
vmap <silent> ,ascom :call AlignMaps#Vis("ascom")
nmap ,ascom <Plug>AM_ascom
vmap <silent> ,aocom :call AlignMaps#Vis("aocom")
nmap ,aocom <Plug>AM_aocom
vmap <silent> ,adcom :call AlignMaps#Vis("adcom")
nmap ,adcom <Plug>AM_adcom
vmap <silent> ,acom :call AlignMaps#Vis("acom")
nmap ,acom <Plug>AM_acom
vmap <silent> ,abox :call AlignMaps#Vis("abox")
nmap ,abox <Plug>AM_abox
vmap <silent> ,a( :call AlignMaps#Vis("a(")
nmap ,a( <Plug>AM_a(
vmap <silent> ,a= :call AlignMaps#Vis("a=")
nmap ,a= <Plug>AM_a=
vmap <silent> ,a< :call AlignMaps#Vis("a<")
nmap ,a< <Plug>AM_a<
vmap <silent> ,a, :call AlignMaps#Vis("a,")
nmap ,a, <Plug>AM_a,
vmap <silent> ,a? :call AlignMaps#Vis("a?")
nmap ,a? <Plug>AM_a?
map <silent> ,rl :call RAction("levels")
map <silent> ,rh :call RAction("help.search")
map <silent> ,rs :call g:SendCmdToR("search()")
vmap <silent> ,, :exec "s/$/\r" . GetVisualSelection() . " <- "A
nmap <silent> ,, :normal! o0 <- a
vmap <silent> ,d <Plug>RSetwd
nmap <silent> ,d <Plug>RSetwd
vmap <silent> ,g <Plug>RSPlot
nmap <silent> ,g <Plug>RSPlot
vmap <silent> ,p <Plug>RPlot
nmap <silent> ,p <Plug>RPlot
vmap <silent> ,s <Plug>RSummary
nmap <silent> ,s <Plug>RSummary
vmap <silent> ,h <Plug>RHelp
nmap <silent> ,h <Plug>RHelp
vmap <silent> ,e <Plug>RShowEx
nmap <silent> ,e <Plug>RShowEx
vmap <silent> ,a <Plug>RShowArgs
nmap <silent> ,a <Plug>RShowArgs
vmap <silent> ,ot <Plug>RObjectStr
nmap <silent> ,ot <Plug>RObjectStr
vmap <silent> ,on <Plug>RObjectNames
nmap <silent> ,on <Plug>RObjectNames
vmap <silent> ,op <Plug>RObjectPr
nmap <silent> ,op <Plug>RObjectPr
nmap ,k <Plug>RNRightPart
nmap ,j <Plug>RNLeftPart
vmap <silent> ,l <Plug>RClearAll
nmap <silent> ,l <Plug>RClearAll
nmap ,f <Plug>RSendFile
vmap ,qq <Plug>RClose
nmap ,qq <Plug>RClose
vmap ,R <Plug>RStart
nmap ,R <Plug>RStart
vnoremap ?? ?=vis#VisBlockSearch()
xnoremap <silent> <expr> A targets#uppercaseXmap('A')
onoremap <silent> AL| :call targets#omap('|', 'double last select expand')
onoremap <silent> AN| :call targets#omap('|', 'double next select expand')
onoremap <silent> Al| :call targets#omap('|', 'last select expand')
onoremap <silent> An| :call targets#omap('|', 'next select expand')
onoremap <silent> A| :call targets#omap('|', 'seekselect expand')
onoremap <silent> AL\ :call targets#omap('\', 'double last select expand')
onoremap <silent> AN\ :call targets#omap('\', 'double next select expand')
onoremap <silent> Al\ :call targets#omap('\', 'last select expand')
onoremap <silent> An\ :call targets#omap('\', 'next select expand')
onoremap <silent> A\ :call targets#omap('\', 'seekselect expand')
onoremap <silent> AL/ :call targets#omap('/', 'double last select expand')
onoremap <silent> AN/ :call targets#omap('/', 'double next select expand')
onoremap <silent> Al/ :call targets#omap('/', 'last select expand')
onoremap <silent> An/ :call targets#omap('/', 'next select expand')
onoremap <silent> A/ :call targets#omap('/', 'seekselect expand')
onoremap <silent> AL* :call targets#omap('*', 'double last select expand')
onoremap <silent> AN* :call targets#omap('*', 'double next select expand')
onoremap <silent> Al* :call targets#omap('*', 'last select expand')
onoremap <silent> An* :call targets#omap('*', 'next select expand')
onoremap <silent> A* :call targets#omap('*', 'seekselect expand')
onoremap <silent> AL_ :call targets#omap('_', 'double last select expand')
onoremap <silent> AN_ :call targets#omap('_', 'double next select expand')
onoremap <silent> Al_ :call targets#omap('_', 'last select expand')
onoremap <silent> An_ :call targets#omap('_', 'next select expand')
onoremap <silent> A_ :call targets#omap('_', 'seekselect expand')
onoremap <silent> AL~ :call targets#omap('~', 'double last select expand')
onoremap <silent> AN~ :call targets#omap('~', 'double next select expand')
onoremap <silent> Al~ :call targets#omap('~', 'last select expand')
onoremap <silent> An~ :call targets#omap('~', 'next select expand')
onoremap <silent> A~ :call targets#omap('~', 'seekselect expand')
onoremap <silent> AL- :call targets#omap('-', 'double last select expand')
onoremap <silent> AN- :call targets#omap('-', 'double next select expand')
onoremap <silent> Al- :call targets#omap('-', 'last select expand')
onoremap <silent> An- :call targets#omap('-', 'next select expand')
onoremap <silent> A- :call targets#omap('-', 'seekselect expand')
onoremap <silent> AL+ :call targets#omap('+', 'double last select expand')
onoremap <silent> AN+ :call targets#omap('+', 'double next select expand')
onoremap <silent> Al+ :call targets#omap('+', 'last select expand')
onoremap <silent> An+ :call targets#omap('+', 'next select expand')
onoremap <silent> A+ :call targets#omap('+', 'seekselect expand')
onoremap <silent> AL: :call targets#omap(':', 'double last select expand')
onoremap <silent> AN: :call targets#omap(':', 'double next select expand')
onoremap <silent> Al: :call targets#omap(':', 'last select expand')
onoremap <silent> An: :call targets#omap(':', 'next select expand')
onoremap <silent> A: :call targets#omap(':', 'seekselect expand')
onoremap <silent> AL; :call targets#omap(';', 'double last select expand')
onoremap <silent> AN; :call targets#omap(';', 'double next select expand')
onoremap <silent> Al; :call targets#omap(';', 'last select expand')
onoremap <silent> An; :call targets#omap(';', 'next select expand')
onoremap <silent> A; :call targets#omap(';', 'seekselect expand')
onoremap <silent> AL. :call targets#omap('.', 'double last select expand')
onoremap <silent> AN. :call targets#omap('.', 'double next select expand')
onoremap <silent> Al. :call targets#omap('.', 'last select expand')
onoremap <silent> An. :call targets#omap('.', 'next select expand')
onoremap <silent> A. :call targets#omap('.', 'seekselect expand')
onoremap <silent> ALc :call targets#omap(',', 'double last select expand')
onoremap <silent> AL, :call targets#omap(',', 'double last select expand')
onoremap <silent> ANc :call targets#omap(',', 'double next select expand')
onoremap <silent> AN, :call targets#omap(',', 'double next select expand')
onoremap <silent> Alc :call targets#omap(',', 'last select expand')
onoremap <silent> Al, :call targets#omap(',', 'last select expand')
onoremap <silent> Anc :call targets#omap(',', 'next select expand')
onoremap <silent> An, :call targets#omap(',', 'next select expand')
onoremap <silent> Ac :call targets#omap(',', 'seekselect expand')
onoremap <silent> A, :call targets#omap(',', 'seekselect expand')
onoremap <silent> AL` :call targets#omap('`', 'quote double last select expand')
onoremap <silent> AN` :call targets#omap('`', 'quote double next select expand')
onoremap <silent> AL' :call targets#omap('''', 'quote double last select expand')
onoremap <silent> AN' :call targets#omap('''', 'quote double next select expand')
onoremap <silent> Al' :call targets#omap('''', 'quote last select expand')
onoremap <silent> An' :call targets#omap('''', 'quote next select expand')
onoremap <silent> A' :call targets#omap('''', 'quote seekselect expand')
onoremap <silent> ALd :call targets#omap('"', 'quote double last select expand')
onoremap <silent> AL" :call targets#omap('"', 'quote double last select expand')
onoremap <silent> ANd :call targets#omap('"', 'quote double next select expand')
onoremap <silent> AN" :call targets#omap('"', 'quote double next select expand')
onoremap <silent> Ald :call targets#omap('"', 'quote last select expand')
onoremap <silent> Al" :call targets#omap('"', 'quote last select expand')
onoremap <silent> And :call targets#omap('"', 'quote next select expand')
onoremap <silent> An" :call targets#omap('"', 'quote next select expand')
onoremap <silent> Ad :call targets#omap('"', 'quote seekselect expand')
onoremap <silent> A" :call targets#omap('"', 'quote seekselect expand')
onoremap <silent> Alt :call targets#omap('t', 'lastt selectp expand')
onoremap <silent> Al` :call targets#omap('`', 'quote last select expand')
onoremap <silent> Ant :call targets#omap('t', 'nextt selectp expand')
onoremap <silent> An` :call targets#omap('`', 'quote next select expand')
onoremap <silent> At :call targets#omap('t', 'seekselectt expand')
onoremap <silent> A` :call targets#omap('`', 'quote seekselect expand')
onoremap <silent> Ala :call targets#omap('<>', 'lastp selectp expand')
onoremap <silent> Al> :call targets#omap('<>', 'lastp selectp expand')
onoremap <silent> Al< :call targets#omap('<>', 'lastp selectp expand')
onoremap <silent> Ana :call targets#omap('<>', 'nextp selectp expand')
onoremap <silent> An> :call targets#omap('<>', 'nextp selectp expand')
onoremap <silent> An< :call targets#omap('<>', 'nextp selectp expand')
onoremap <silent> Aa :call targets#omap('<>', 'seekselectp expand')
onoremap <silent> A> :call targets#omap('<>', 'seekselectp expand')
onoremap <silent> A< :call targets#omap('<>', 'seekselectp expand')
onoremap <silent> Alr :call targets#omap('[]', 'lastp selectp expand')
onoremap <silent> Al] :call targets#omap('[]', 'lastp selectp expand')
onoremap <silent> Al[ :call targets#omap('[]', 'lastp selectp expand')
onoremap <silent> Anr :call targets#omap('[]', 'nextp selectp expand')
onoremap <silent> An] :call targets#omap('[]', 'nextp selectp expand')
onoremap <silent> An[ :call targets#omap('[]', 'nextp selectp expand')
onoremap <silent> Ar :call targets#omap('[]', 'seekselectp expand')
onoremap <silent> A] :call targets#omap('[]', 'seekselectp expand')
onoremap <silent> A[ :call targets#omap('[]', 'seekselectp expand')
onoremap <silent> AlB :call targets#omap('{}', 'lastp selectp expand')
onoremap <silent> Al} :call targets#omap('{}', 'lastp selectp expand')
onoremap <silent> Al{ :call targets#omap('{}', 'lastp selectp expand')
onoremap <silent> AnB :call targets#omap('{}', 'nextp selectp expand')
onoremap <silent> An} :call targets#omap('{}', 'nextp selectp expand')
onoremap <silent> An{ :call targets#omap('{}', 'nextp selectp expand')
onoremap <silent> AB :call targets#omap('{}', 'seekselectp expand')
onoremap <silent> A} :call targets#omap('{}', 'seekselectp expand')
onoremap <silent> A{ :call targets#omap('{}', 'seekselectp expand')
onoremap <silent> Alb :call targets#omap('()', 'lastp selectp expand')
onoremap <silent> Al) :call targets#omap('()', 'lastp selectp expand')
onoremap <silent> Al( :call targets#omap('()', 'lastp selectp expand')
onoremap <silent> Anb :call targets#omap('()', 'nextp selectp expand')
onoremap <silent> An) :call targets#omap('()', 'nextp selectp expand')
onoremap <silent> An( :call targets#omap('()', 'nextp selectp expand')
onoremap <silent> Ab :call targets#omap('()', 'seekselectp expand')
onoremap <silent> A) :call targets#omap('()', 'seekselectp expand')
onoremap <silent> A( :call targets#omap('()', 'seekselectp expand')
imap µ 5gt
imap ´ 4gt
imap ³ 3gt
imap ² 2gt
imap ± 1gt
vnoremap <expr> D DVB_Duplicate()
xnoremap <silent> <expr> I targets#uppercaseXmap('I')
onoremap <silent> IL| :call targets#omap('|', 'double last select shrink')
onoremap <silent> IN| :call targets#omap('|', 'double next select shrink')
onoremap <silent> Il| :call targets#omap('|', 'last select shrink')
onoremap <silent> In| :call targets#omap('|', 'next select shrink')
onoremap <silent> I| :call targets#omap('|', 'seekselect shrink')
onoremap <silent> IL\ :call targets#omap('\', 'double last select shrink')
onoremap <silent> IN\ :call targets#omap('\', 'double next select shrink')
onoremap <silent> Il\ :call targets#omap('\', 'last select shrink')
onoremap <silent> In\ :call targets#omap('\', 'next select shrink')
onoremap <silent> I\ :call targets#omap('\', 'seekselect shrink')
onoremap <silent> IL/ :call targets#omap('/', 'double last select shrink')
onoremap <silent> IN/ :call targets#omap('/', 'double next select shrink')
onoremap <silent> Il/ :call targets#omap('/', 'last select shrink')
onoremap <silent> In/ :call targets#omap('/', 'next select shrink')
onoremap <silent> I/ :call targets#omap('/', 'seekselect shrink')
onoremap <silent> IL* :call targets#omap('*', 'double last select shrink')
onoremap <silent> IN* :call targets#omap('*', 'double next select shrink')
onoremap <silent> Il* :call targets#omap('*', 'last select shrink')
onoremap <silent> In* :call targets#omap('*', 'next select shrink')
onoremap <silent> I* :call targets#omap('*', 'seekselect shrink')
onoremap <silent> IL_ :call targets#omap('_', 'double last select shrink')
onoremap <silent> IN_ :call targets#omap('_', 'double next select shrink')
onoremap <silent> Il_ :call targets#omap('_', 'last select shrink')
onoremap <silent> In_ :call targets#omap('_', 'next select shrink')
onoremap <silent> I_ :call targets#omap('_', 'seekselect shrink')
onoremap <silent> IL~ :call targets#omap('~', 'double last select shrink')
onoremap <silent> IN~ :call targets#omap('~', 'double next select shrink')
onoremap <silent> Il~ :call targets#omap('~', 'last select shrink')
onoremap <silent> In~ :call targets#omap('~', 'next select shrink')
onoremap <silent> I~ :call targets#omap('~', 'seekselect shrink')
onoremap <silent> IL- :call targets#omap('-', 'double last select shrink')
onoremap <silent> IN- :call targets#omap('-', 'double next select shrink')
onoremap <silent> Il- :call targets#omap('-', 'last select shrink')
onoremap <silent> In- :call targets#omap('-', 'next select shrink')
onoremap <silent> I- :call targets#omap('-', 'seekselect shrink')
onoremap <silent> IL+ :call targets#omap('+', 'double last select shrink')
onoremap <silent> IN+ :call targets#omap('+', 'double next select shrink')
onoremap <silent> Il+ :call targets#omap('+', 'last select shrink')
onoremap <silent> In+ :call targets#omap('+', 'next select shrink')
onoremap <silent> I+ :call targets#omap('+', 'seekselect shrink')
onoremap <silent> IL: :call targets#omap(':', 'double last select shrink')
onoremap <silent> IN: :call targets#omap(':', 'double next select shrink')
onoremap <silent> Il: :call targets#omap(':', 'last select shrink')
onoremap <silent> In: :call targets#omap(':', 'next select shrink')
onoremap <silent> I: :call targets#omap(':', 'seekselect shrink')
onoremap <silent> IL; :call targets#omap(';', 'double last select shrink')
onoremap <silent> IN; :call targets#omap(';', 'double next select shrink')
onoremap <silent> Il; :call targets#omap(';', 'last select shrink')
onoremap <silent> In; :call targets#omap(';', 'next select shrink')
onoremap <silent> I; :call targets#omap(';', 'seekselect shrink')
onoremap <silent> IL. :call targets#omap('.', 'double last select shrink')
onoremap <silent> IN. :call targets#omap('.', 'double next select shrink')
onoremap <silent> Il. :call targets#omap('.', 'last select shrink')
onoremap <silent> In. :call targets#omap('.', 'next select shrink')
onoremap <silent> I. :call targets#omap('.', 'seekselect shrink')
onoremap <silent> ILc :call targets#omap(',', 'double last select shrink')
onoremap <silent> IL, :call targets#omap(',', 'double last select shrink')
onoremap <silent> INc :call targets#omap(',', 'double next select shrink')
onoremap <silent> IN, :call targets#omap(',', 'double next select shrink')
onoremap <silent> Ilc :call targets#omap(',', 'last select shrink')
onoremap <silent> Il, :call targets#omap(',', 'last select shrink')
onoremap <silent> Inc :call targets#omap(',', 'next select shrink')
onoremap <silent> In, :call targets#omap(',', 'next select shrink')
onoremap <silent> Ic :call targets#omap(',', 'seekselect shrink')
onoremap <silent> I, :call targets#omap(',', 'seekselect shrink')
onoremap <silent> IL` :call targets#omap('`', 'quote double last select shrink')
onoremap <silent> IN` :call targets#omap('`', 'quote double next select shrink')
onoremap <silent> IL' :call targets#omap('''', 'quote double last select shrink')
onoremap <silent> IN' :call targets#omap('''', 'quote double next select shrink')
onoremap <silent> Il' :call targets#omap('''', 'quote last select shrink')
onoremap <silent> In' :call targets#omap('''', 'quote next select shrink')
onoremap <silent> I' :call targets#omap('''', 'quote seekselect shrink')
onoremap <silent> ILd :call targets#omap('"', 'quote double last select shrink')
onoremap <silent> IL" :call targets#omap('"', 'quote double last select shrink')
onoremap <silent> INd :call targets#omap('"', 'quote double next select shrink')
onoremap <silent> IN" :call targets#omap('"', 'quote double next select shrink')
onoremap <silent> Ild :call targets#omap('"', 'quote last select shrink')
onoremap <silent> Il" :call targets#omap('"', 'quote last select shrink')
onoremap <silent> Ind :call targets#omap('"', 'quote next select shrink')
onoremap <silent> In" :call targets#omap('"', 'quote next select shrink')
onoremap <silent> Id :call targets#omap('"', 'quote seekselect shrink')
onoremap <silent> I" :call targets#omap('"', 'quote seekselect shrink')
onoremap <silent> Ilt :call targets#omap('t', 'lastt selectp dropt shrink')
onoremap <silent> Il` :call targets#omap('`', 'quote last select shrink')
onoremap <silent> Int :call targets#omap('t', 'nextt selectp dropt shrink')
onoremap <silent> In` :call targets#omap('`', 'quote next select shrink')
onoremap <silent> It :call targets#omap('t', 'seekselectt dropt shrink')
onoremap <silent> I` :call targets#omap('`', 'quote seekselect shrink')
onoremap <silent> Ila :call targets#omap('<>', 'lastp selectp shrink')
onoremap <silent> Il> :call targets#omap('<>', 'lastp selectp shrink')
onoremap <silent> Il< :call targets#omap('<>', 'lastp selectp shrink')
onoremap <silent> Ina :call targets#omap('<>', 'nextp selectp shrink')
onoremap <silent> In> :call targets#omap('<>', 'nextp selectp shrink')
onoremap <silent> In< :call targets#omap('<>', 'nextp selectp shrink')
onoremap <silent> Ia :call targets#omap('<>', 'seekselectp shrink')
onoremap <silent> I> :call targets#omap('<>', 'seekselectp shrink')
onoremap <silent> I< :call targets#omap('<>', 'seekselectp shrink')
onoremap <silent> Ilr :call targets#omap('[]', 'lastp selectp shrink')
onoremap <silent> Il] :call targets#omap('[]', 'lastp selectp shrink')
onoremap <silent> Il[ :call targets#omap('[]', 'lastp selectp shrink')
onoremap <silent> Inr :call targets#omap('[]', 'nextp selectp shrink')
onoremap <silent> In] :call targets#omap('[]', 'nextp selectp shrink')
onoremap <silent> In[ :call targets#omap('[]', 'nextp selectp shrink')
onoremap <silent> Ir :call targets#omap('[]', 'seekselectp shrink')
onoremap <silent> I] :call targets#omap('[]', 'seekselectp shrink')
onoremap <silent> I[ :call targets#omap('[]', 'seekselectp shrink')
onoremap <silent> IlB :call targets#omap('{}', 'lastp selectp shrink')
onoremap <silent> Il} :call targets#omap('{}', 'lastp selectp shrink')
onoremap <silent> Il{ :call targets#omap('{}', 'lastp selectp shrink')
onoremap <silent> InB :call targets#omap('{}', 'nextp selectp shrink')
onoremap <silent> In} :call targets#omap('{}', 'nextp selectp shrink')
onoremap <silent> In{ :call targets#omap('{}', 'nextp selectp shrink')
onoremap <silent> IB :call targets#omap('{}', 'seekselectp shrink')
onoremap <silent> I} :call targets#omap('{}', 'seekselectp shrink')
onoremap <silent> I{ :call targets#omap('{}', 'seekselectp shrink')
onoremap <silent> Ilb :call targets#omap('()', 'lastp selectp shrink')
onoremap <silent> Il) :call targets#omap('()', 'lastp selectp shrink')
onoremap <silent> Il( :call targets#omap('()', 'lastp selectp shrink')
onoremap <silent> Inb :call targets#omap('()', 'nextp selectp shrink')
onoremap <silent> In) :call targets#omap('()', 'nextp selectp shrink')
onoremap <silent> In( :call targets#omap('()', 'nextp selectp shrink')
onoremap <silent> Ib :call targets#omap('()', 'seekselectp shrink')
onoremap <silent> I) :call targets#omap('()', 'seekselectp shrink')
onoremap <silent> I( :call targets#omap('()', 'seekselectp shrink')
nnoremap M `m :ShowMarksOnce:foldo
xmap S <Plug>VSurround
nnoremap <silent> U :normal! mzlbgUl`z:nohl
vnoremap V v
nnoremap V v
vmap X <Plug>(Exchange)
nnoremap Y y$
nmap [xx <Plug>unimpaired_line_xml_encode
xmap [x <Plug>unimpaired_xml_encode
nmap [x <Plug>unimpaired_xml_encode
nmap [uu <Plug>unimpaired_line_url_encode
xmap [u <Plug>unimpaired_url_encode
nmap [u <Plug>unimpaired_url_encode
nmap [yy <Plug>unimpaired_line_string_encode
xmap [y <Plug>unimpaired_string_encode
nmap [y <Plug>unimpaired_string_encode
nmap [p <Plug>unimpairedPutAbove
nnoremap [ov :set virtualedit+=all
nnoremap [ox :set cursorline cursorcolumn
nnoremap [ow :set wrap
nnoremap [os :set spell
nnoremap [or :set relativenumber
nnoremap [on :set number
nnoremap [ol :set list
nnoremap [oi :set ignorecase
nnoremap [oh :set hlsearch
nnoremap [od :diffthis
nnoremap [ou :set cursorcolumn
nnoremap [oc :set cursorline
nnoremap [ob :set background=light
xmap [e <Plug>unimpairedMoveSelectionUp
nmap [e <Plug>unimpairedMoveUp
nmap [  <Plug>unimpairedBlankUp
omap [n <Plug>unimpairedContextPrevious
nmap [n <Plug>unimpairedContextPrevious
nmap [o <Plug>unimpairedOPrevious
nmap [f <Plug>unimpairedDirectoryPrevious
nmap <silent> [T <Plug>unimpairedTFirst
nmap <silent> [t <Plug>unimpairedTPrevious
nmap <silent> [ <Plug>unimpairedQPFile
nmap <silent> [Q <Plug>unimpairedQFirst
nmap <silent> [q <Plug>unimpairedQPrevious
nmap <silent> [ <Plug>unimpairedLPFile
nmap <silent> [L <Plug>unimpairedLFirst
nmap <silent> [l <Plug>unimpairedLPrevious
nmap <silent> [B <Plug>unimpairedBFirst
nmap <silent> [b <Plug>unimpairedBPrevious
nmap <silent> [A <Plug>unimpairedAFirst
nmap <silent> [a <Plug>unimpairedAPrevious
vmap [% [%m'gv``
xnoremap \ :!firefox =GetVisualSelection()
nnoremap \ :exe "!firefox " . shellescape(expand("<cword>"))
nmap ]xx <Plug>unimpaired_line_xml_decode
xmap ]x <Plug>unimpaired_xml_decode
nmap ]x <Plug>unimpaired_xml_decode
nmap ]uu <Plug>unimpaired_line_url_decode
xmap ]u <Plug>unimpaired_url_decode
nmap ]u <Plug>unimpaired_url_decode
nmap ]yy <Plug>unimpaired_line_string_decode
xmap ]y <Plug>unimpaired_string_decode
nmap ]y <Plug>unimpaired_string_decode
nmap ]p <Plug>unimpairedPutBelow
nnoremap ]ov :set virtualedit-=all
nnoremap ]ox :set nocursorline nocursorcolumn
nnoremap ]ow :set nowrap
nnoremap ]os :set nospell
nnoremap ]or :set norelativenumber
nnoremap ]on :set nonumber
nnoremap ]ol :set nolist
nnoremap ]oi :set noignorecase
nnoremap ]oh :set nohlsearch
nnoremap ]od :diffoff
nnoremap ]ou :set nocursorcolumn
nnoremap ]oc :set nocursorline
nnoremap ]ob :set background=dark
xmap ]e <Plug>unimpairedMoveSelectionDown
nmap ]e <Plug>unimpairedMoveDown
nmap ]  <Plug>unimpairedBlankDown
omap ]n <Plug>unimpairedContextNext
nmap ]n <Plug>unimpairedContextNext
nmap ]o <Plug>unimpairedONext
nmap ]f <Plug>unimpairedDirectoryNext
nmap <silent> ]T <Plug>unimpairedTLast
nmap <silent> ]t <Plug>unimpairedTNext
nmap <silent> ] <Plug>unimpairedQNFile
nmap <silent> ]Q <Plug>unimpairedQLast
nmap <silent> ]q <Plug>unimpairedQNext
nmap <silent> ] <Plug>unimpairedLNFile
nmap <silent> ]L <Plug>unimpairedLLast
nmap <silent> ]l <Plug>unimpairedLNext
nmap <silent> ]B <Plug>unimpairedBLast
nmap <silent> ]b <Plug>unimpairedBNext
nmap <silent> ]A <Plug>unimpairedALast
nmap <silent> ]a <Plug>unimpairedANext
vmap ]% ]%m'gv``
xnoremap <silent> aL| :call targets#xmap('|', 'double last select dropr')
onoremap <silent> aL| :call targets#omap('|', 'double last select dropr')
xnoremap <silent> aN| :call targets#xmap('|', 'double next select dropr')
onoremap <silent> aN| :call targets#omap('|', 'double next select dropr')
xnoremap <silent> al| :call targets#xmap('|', 'last select dropr')
onoremap <silent> al| :call targets#omap('|', 'last select dropr')
xnoremap <silent> an| :call targets#xmap('|', 'next select dropr')
onoremap <silent> an| :call targets#omap('|', 'next select dropr')
xnoremap <silent> a| :call targets#xmap('|', 'seekselect dropr')
onoremap <silent> a| :call targets#omap('|', 'seekselect dropr')
xnoremap <silent> aL\ :call targets#xmap('\', 'double last select dropr')
onoremap <silent> aL\ :call targets#omap('\', 'double last select dropr')
xnoremap <silent> aN\ :call targets#xmap('\', 'double next select dropr')
onoremap <silent> aN\ :call targets#omap('\', 'double next select dropr')
xnoremap <silent> al\ :call targets#xmap('\', 'last select dropr')
onoremap <silent> al\ :call targets#omap('\', 'last select dropr')
xnoremap <silent> an\ :call targets#xmap('\', 'next select dropr')
onoremap <silent> an\ :call targets#omap('\', 'next select dropr')
xnoremap <silent> a\ :call targets#xmap('\', 'seekselect dropr')
onoremap <silent> a\ :call targets#omap('\', 'seekselect dropr')
xnoremap <silent> aL/ :call targets#xmap('/', 'double last select dropr')
onoremap <silent> aL/ :call targets#omap('/', 'double last select dropr')
xnoremap <silent> aN/ :call targets#xmap('/', 'double next select dropr')
onoremap <silent> aN/ :call targets#omap('/', 'double next select dropr')
xnoremap <silent> al/ :call targets#xmap('/', 'last select dropr')
onoremap <silent> al/ :call targets#omap('/', 'last select dropr')
xnoremap <silent> an/ :call targets#xmap('/', 'next select dropr')
onoremap <silent> an/ :call targets#omap('/', 'next select dropr')
xnoremap <silent> a/ :call targets#xmap('/', 'seekselect dropr')
onoremap <silent> a/ :call targets#omap('/', 'seekselect dropr')
xnoremap <silent> aL* :call targets#xmap('*', 'double last select dropr')
onoremap <silent> aL* :call targets#omap('*', 'double last select dropr')
xnoremap <silent> aN* :call targets#xmap('*', 'double next select dropr')
onoremap <silent> aN* :call targets#omap('*', 'double next select dropr')
xnoremap <silent> al* :call targets#xmap('*', 'last select dropr')
onoremap <silent> al* :call targets#omap('*', 'last select dropr')
xnoremap <silent> an* :call targets#xmap('*', 'next select dropr')
onoremap <silent> an* :call targets#omap('*', 'next select dropr')
xnoremap <silent> a* :call targets#xmap('*', 'seekselect dropr')
onoremap <silent> a* :call targets#omap('*', 'seekselect dropr')
xnoremap <silent> aL_ :call targets#xmap('_', 'double last select dropr')
onoremap <silent> aL_ :call targets#omap('_', 'double last select dropr')
xnoremap <silent> aN_ :call targets#xmap('_', 'double next select dropr')
onoremap <silent> aN_ :call targets#omap('_', 'double next select dropr')
xnoremap <silent> al_ :call targets#xmap('_', 'last select dropr')
onoremap <silent> al_ :call targets#omap('_', 'last select dropr')
xnoremap <silent> an_ :call targets#xmap('_', 'next select dropr')
onoremap <silent> an_ :call targets#omap('_', 'next select dropr')
xnoremap <silent> a_ :call targets#xmap('_', 'seekselect dropr')
onoremap <silent> a_ :call targets#omap('_', 'seekselect dropr')
xnoremap <silent> aL~ :call targets#xmap('~', 'double last select dropr')
onoremap <silent> aL~ :call targets#omap('~', 'double last select dropr')
xnoremap <silent> aN~ :call targets#xmap('~', 'double next select dropr')
onoremap <silent> aN~ :call targets#omap('~', 'double next select dropr')
xnoremap <silent> al~ :call targets#xmap('~', 'last select dropr')
onoremap <silent> al~ :call targets#omap('~', 'last select dropr')
xnoremap <silent> an~ :call targets#xmap('~', 'next select dropr')
onoremap <silent> an~ :call targets#omap('~', 'next select dropr')
xnoremap <silent> a~ :call targets#xmap('~', 'seekselect dropr')
onoremap <silent> a~ :call targets#omap('~', 'seekselect dropr')
xnoremap <silent> aL- :call targets#xmap('-', 'double last select dropr')
onoremap <silent> aL- :call targets#omap('-', 'double last select dropr')
xnoremap <silent> aN- :call targets#xmap('-', 'double next select dropr')
onoremap <silent> aN- :call targets#omap('-', 'double next select dropr')
xnoremap <silent> al- :call targets#xmap('-', 'last select dropr')
onoremap <silent> al- :call targets#omap('-', 'last select dropr')
xnoremap <silent> an- :call targets#xmap('-', 'next select dropr')
onoremap <silent> an- :call targets#omap('-', 'next select dropr')
xnoremap <silent> a- :call targets#xmap('-', 'seekselect dropr')
onoremap <silent> a- :call targets#omap('-', 'seekselect dropr')
xnoremap <silent> aL+ :call targets#xmap('+', 'double last select dropr')
onoremap <silent> aL+ :call targets#omap('+', 'double last select dropr')
xnoremap <silent> aN+ :call targets#xmap('+', 'double next select dropr')
onoremap <silent> aN+ :call targets#omap('+', 'double next select dropr')
xnoremap <silent> al+ :call targets#xmap('+', 'last select dropr')
onoremap <silent> al+ :call targets#omap('+', 'last select dropr')
xnoremap <silent> an+ :call targets#xmap('+', 'next select dropr')
onoremap <silent> an+ :call targets#omap('+', 'next select dropr')
xnoremap <silent> a+ :call targets#xmap('+', 'seekselect dropr')
onoremap <silent> a+ :call targets#omap('+', 'seekselect dropr')
xnoremap <silent> aL: :call targets#xmap(':', 'double last select dropr')
onoremap <silent> aL: :call targets#omap(':', 'double last select dropr')
xnoremap <silent> aN: :call targets#xmap(':', 'double next select dropr')
onoremap <silent> aN: :call targets#omap(':', 'double next select dropr')
xnoremap <silent> al: :call targets#xmap(':', 'last select dropr')
onoremap <silent> al: :call targets#omap(':', 'last select dropr')
xnoremap <silent> an: :call targets#xmap(':', 'next select dropr')
onoremap <silent> an: :call targets#omap(':', 'next select dropr')
xnoremap <silent> a: :call targets#xmap(':', 'seekselect dropr')
onoremap <silent> a: :call targets#omap(':', 'seekselect dropr')
xnoremap <silent> aL; :call targets#xmap(';', 'double last select dropr')
onoremap <silent> aL; :call targets#omap(';', 'double last select dropr')
xnoremap <silent> aN; :call targets#xmap(';', 'double next select dropr')
onoremap <silent> aN; :call targets#omap(';', 'double next select dropr')
xnoremap <silent> al; :call targets#xmap(';', 'last select dropr')
onoremap <silent> al; :call targets#omap(';', 'last select dropr')
xnoremap <silent> an; :call targets#xmap(';', 'next select dropr')
onoremap <silent> an; :call targets#omap(';', 'next select dropr')
xnoremap <silent> a; :call targets#xmap(';', 'seekselect dropr')
onoremap <silent> a; :call targets#omap(';', 'seekselect dropr')
xnoremap <silent> aL. :call targets#xmap('.', 'double last select dropr')
onoremap <silent> aL. :call targets#omap('.', 'double last select dropr')
xnoremap <silent> aN. :call targets#xmap('.', 'double next select dropr')
onoremap <silent> aN. :call targets#omap('.', 'double next select dropr')
xnoremap <silent> al. :call targets#xmap('.', 'last select dropr')
onoremap <silent> al. :call targets#omap('.', 'last select dropr')
xnoremap <silent> an. :call targets#xmap('.', 'next select dropr')
onoremap <silent> an. :call targets#omap('.', 'next select dropr')
xnoremap <silent> a. :call targets#xmap('.', 'seekselect dropr')
onoremap <silent> a. :call targets#omap('.', 'seekselect dropr')
xnoremap <silent> aLc :call targets#xmap(',', 'double last select dropr')
onoremap <silent> aLc :call targets#omap(',', 'double last select dropr')
xnoremap <silent> aL, :call targets#xmap(',', 'double last select dropr')
onoremap <silent> aL, :call targets#omap(',', 'double last select dropr')
xnoremap <silent> aNc :call targets#xmap(',', 'double next select dropr')
onoremap <silent> aNc :call targets#omap(',', 'double next select dropr')
xnoremap <silent> aN, :call targets#xmap(',', 'double next select dropr')
onoremap <silent> aN, :call targets#omap(',', 'double next select dropr')
xnoremap <silent> alc :call targets#xmap(',', 'last select dropr')
onoremap <silent> alc :call targets#omap(',', 'last select dropr')
xnoremap <silent> al, :call targets#xmap(',', 'last select dropr')
onoremap <silent> al, :call targets#omap(',', 'last select dropr')
xnoremap <silent> anc :call targets#xmap(',', 'next select dropr')
onoremap <silent> anc :call targets#omap(',', 'next select dropr')
xnoremap <silent> an, :call targets#xmap(',', 'next select dropr')
onoremap <silent> an, :call targets#omap(',', 'next select dropr')
xnoremap <silent> ac :call targets#xmap(',', 'seekselect dropr')
onoremap <silent> ac :call targets#omap(',', 'seekselect dropr')
xnoremap <silent> a, :call targets#xmap(',', 'seekselect dropr')
onoremap <silent> a, :call targets#omap(',', 'seekselect dropr')
xnoremap <silent> aL` :call targets#xmap('`', 'quote double last select')
onoremap <silent> aL` :call targets#omap('`', 'quote double last select')
xnoremap <silent> aN` :call targets#xmap('`', 'quote double next select')
onoremap <silent> aN` :call targets#omap('`', 'quote double next select')
xnoremap <silent> aL' :call targets#xmap('''', 'quote double last select')
onoremap <silent> aL' :call targets#omap('''', 'quote double last select')
xnoremap <silent> aN' :call targets#xmap('''', 'quote double next select')
onoremap <silent> aN' :call targets#omap('''', 'quote double next select')
xnoremap <silent> al' :call targets#xmap('''', 'quote last select')
onoremap <silent> al' :call targets#omap('''', 'quote last select')
xnoremap <silent> an' :call targets#xmap('''', 'quote next select')
onoremap <silent> an' :call targets#omap('''', 'quote next select')
xnoremap <silent> a' :call targets#xmap('''', 'quote seekselect')
onoremap <silent> a' :call targets#omap('''', 'quote seekselect')
xnoremap <silent> aLd :call targets#xmap('"', 'quote double last select')
onoremap <silent> aLd :call targets#omap('"', 'quote double last select')
xnoremap <silent> aL" :call targets#xmap('"', 'quote double last select')
onoremap <silent> aL" :call targets#omap('"', 'quote double last select')
xnoremap <silent> aNd :call targets#xmap('"', 'quote double next select')
onoremap <silent> aNd :call targets#omap('"', 'quote double next select')
xnoremap <silent> aN" :call targets#xmap('"', 'quote double next select')
onoremap <silent> aN" :call targets#omap('"', 'quote double next select')
xnoremap <silent> ald :call targets#xmap('"', 'quote last select')
onoremap <silent> ald :call targets#omap('"', 'quote last select')
xnoremap <silent> al" :call targets#xmap('"', 'quote last select')
onoremap <silent> al" :call targets#omap('"', 'quote last select')
xnoremap <silent> and :call targets#xmap('"', 'quote next select')
onoremap <silent> and :call targets#omap('"', 'quote next select')
xnoremap <silent> an" :call targets#xmap('"', 'quote next select')
onoremap <silent> an" :call targets#omap('"', 'quote next select')
xnoremap <silent> ad :call targets#xmap('"', 'quote seekselect')
onoremap <silent> ad :call targets#omap('"', 'quote seekselect')
xnoremap <silent> a" :call targets#xmap('"', 'quote seekselect')
onoremap <silent> a" :call targets#omap('"', 'quote seekselect')
xnoremap <silent> alt :call targets#xmap('t', 'lastt selectp')
onoremap <silent> alt :call targets#omap('t', 'lastt selectp')
xnoremap <silent> al` :call targets#xmap('`', 'quote last select')
onoremap <silent> al` :call targets#omap('`', 'quote last select')
xnoremap <silent> ant :call targets#xmap('t', 'nextt selectp')
onoremap <silent> ant :call targets#omap('t', 'nextt selectp')
xnoremap <silent> an` :call targets#xmap('`', 'quote next select')
onoremap <silent> an` :call targets#omap('`', 'quote next select')
xnoremap <silent> at :call targets#xmap('t', 'grow seekselectt')
onoremap <silent> at :call targets#omap('t', 'grow seekselectt')
xnoremap <silent> a` :call targets#xmap('`', 'quote seekselect')
onoremap <silent> a` :call targets#omap('`', 'quote seekselect')
xnoremap <silent> ala :call targets#xmap('<>', 'lastp selectp')
onoremap <silent> ala :call targets#omap('<>', 'lastp selectp')
xnoremap <silent> al> :call targets#xmap('<>', 'lastp selectp')
onoremap <silent> al> :call targets#omap('<>', 'lastp selectp')
xnoremap <silent> al< :call targets#xmap('<>', 'lastp selectp')
onoremap <silent> al< :call targets#omap('<>', 'lastp selectp')
xnoremap <silent> ana :call targets#xmap('<>', 'nextp selectp')
onoremap <silent> ana :call targets#omap('<>', 'nextp selectp')
xnoremap <silent> an> :call targets#xmap('<>', 'nextp selectp')
onoremap <silent> an> :call targets#omap('<>', 'nextp selectp')
xnoremap <silent> an< :call targets#xmap('<>', 'nextp selectp')
onoremap <silent> an< :call targets#omap('<>', 'nextp selectp')
xnoremap <silent> aa :call targets#xmap('<>', 'grow seekselectp')
onoremap <silent> aa :call targets#omap('<>', 'grow seekselectp')
xnoremap <silent> a> :call targets#xmap('<>', 'grow seekselectp')
onoremap <silent> a> :call targets#omap('<>', 'grow seekselectp')
xnoremap <silent> a< :call targets#xmap('<>', 'grow seekselectp')
onoremap <silent> a< :call targets#omap('<>', 'grow seekselectp')
xnoremap <silent> alr :call targets#xmap('[]', 'lastp selectp')
onoremap <silent> alr :call targets#omap('[]', 'lastp selectp')
xnoremap <silent> al] :call targets#xmap('[]', 'lastp selectp')
onoremap <silent> al] :call targets#omap('[]', 'lastp selectp')
xnoremap <silent> al[ :call targets#xmap('[]', 'lastp selectp')
onoremap <silent> al[ :call targets#omap('[]', 'lastp selectp')
xnoremap <silent> anr :call targets#xmap('[]', 'nextp selectp')
onoremap <silent> anr :call targets#omap('[]', 'nextp selectp')
xnoremap <silent> an] :call targets#xmap('[]', 'nextp selectp')
onoremap <silent> an] :call targets#omap('[]', 'nextp selectp')
xnoremap <silent> an[ :call targets#xmap('[]', 'nextp selectp')
onoremap <silent> an[ :call targets#omap('[]', 'nextp selectp')
xnoremap <silent> ar :call targets#xmap('[]', 'grow seekselectp')
onoremap <silent> ar :call targets#omap('[]', 'grow seekselectp')
xnoremap <silent> a] :call targets#xmap('[]', 'grow seekselectp')
onoremap <silent> a] :call targets#omap('[]', 'grow seekselectp')
xnoremap <silent> a[ :call targets#xmap('[]', 'grow seekselectp')
onoremap <silent> a[ :call targets#omap('[]', 'grow seekselectp')
xnoremap <silent> alB :call targets#xmap('{}', 'lastp selectp')
onoremap <silent> alB :call targets#omap('{}', 'lastp selectp')
xnoremap <silent> al} :call targets#xmap('{}', 'lastp selectp')
onoremap <silent> al} :call targets#omap('{}', 'lastp selectp')
xnoremap <silent> al{ :call targets#xmap('{}', 'lastp selectp')
onoremap <silent> al{ :call targets#omap('{}', 'lastp selectp')
xnoremap <silent> anB :call targets#xmap('{}', 'nextp selectp')
onoremap <silent> anB :call targets#omap('{}', 'nextp selectp')
xnoremap <silent> an} :call targets#xmap('{}', 'nextp selectp')
onoremap <silent> an} :call targets#omap('{}', 'nextp selectp')
xnoremap <silent> an{ :call targets#xmap('{}', 'nextp selectp')
onoremap <silent> an{ :call targets#omap('{}', 'nextp selectp')
xnoremap <silent> aB :call targets#xmap('{}', 'grow seekselectp')
onoremap <silent> aB :call targets#omap('{}', 'grow seekselectp')
xnoremap <silent> a} :call targets#xmap('{}', 'grow seekselectp')
onoremap <silent> a} :call targets#omap('{}', 'grow seekselectp')
xnoremap <silent> a{ :call targets#xmap('{}', 'grow seekselectp')
onoremap <silent> a{ :call targets#omap('{}', 'grow seekselectp')
xnoremap <silent> alb :call targets#xmap('()', 'lastp selectp')
onoremap <silent> alb :call targets#omap('()', 'lastp selectp')
xnoremap <silent> al) :call targets#xmap('()', 'lastp selectp')
onoremap <silent> al) :call targets#omap('()', 'lastp selectp')
xnoremap <silent> al( :call targets#xmap('()', 'lastp selectp')
onoremap <silent> al( :call targets#omap('()', 'lastp selectp')
xnoremap <silent> anb :call targets#xmap('()', 'nextp selectp')
onoremap <silent> anb :call targets#omap('()', 'nextp selectp')
xnoremap <silent> an) :call targets#xmap('()', 'nextp selectp')
onoremap <silent> an) :call targets#omap('()', 'nextp selectp')
xnoremap <silent> an( :call targets#xmap('()', 'nextp selectp')
onoremap <silent> an( :call targets#omap('()', 'nextp selectp')
xnoremap <silent> ab :call targets#xmap('()', 'grow seekselectp')
onoremap <silent> ab :call targets#omap('()', 'grow seekselectp')
xnoremap <silent> a) :call targets#xmap('()', 'grow seekselectp')
onoremap <silent> a) :call targets#omap('()', 'grow seekselectp')
xnoremap <silent> a( :call targets#xmap('()', 'grow seekselectp')
onoremap <silent> a( :call targets#omap('()', 'grow seekselectp')
vmap a% [%v]%
map <silent> b <Plug>CamelCaseMotion_b
nnoremap cov :set =(&virtualedit =~# "all") ? 'virtualedit-=all' : 'virtualedit+=all'
nnoremap cox :set =&cursorline && &cursorcolumn ? 'nocursorline nocursorcolumn' : 'cursorline cursorcolumn'
nnoremap cod :=&diff ? 'diffoff' : 'diffthis'
nnoremap cob :set background==&background == 'dark' ? 'light' : 'dark'
nmap cs <Plug>Csurround
nmap cxx <Plug>(ExchangeLine)
nmap cxc <Plug>(ExchangeClear)
nmap cx <Plug>(Exchange)
vmap cp <Plug>NERDCommenterYankP
vmap cy <Plug>NERDCommenterYank
vmap ci <Plug>NERDCommenterInvert
vmap cs <Plug>NERDCommenterSexy
vmap cu <Plug>NERDCommenterUncomment
nmap cp <Plug>NERDCommenterYankp
nmap cy <Plug>NERDCommenterYank
nmap cu <Plug>NERDCommenterUncomment
nmap cii <Plug>NERDCommenterInvert
nmap csi 2<Plug>NERDCommenterInvert
nmap css <Plug>NERDCommenterSexy
nmap ds <Plug>Dsurround
map <silent> e <Plug>CamelCaseMotion_e
nmap gx <Plug>NetrwBrowseX
xmap gS <Plug>VgSurround
vmap <silent> gc :call CountSpaces(visualmode(), 1)
nmap <silent> gc :set opfunc=CountSpacesg@
nnoremap gm :call cursor(0, virtcol('$')/2)
nnoremap gF :lcd %:p:h:e! ./<cfile>
noremap gV `[v`]
xnoremap <silent> iL| :call targets#xmap('|', 'double last select drop')
onoremap <silent> iL| :call targets#omap('|', 'double last select drop')
xnoremap <silent> iN| :call targets#xmap('|', 'double next select drop')
onoremap <silent> iN| :call targets#omap('|', 'double next select drop')
xnoremap <silent> il| :call targets#xmap('|', 'last select drop')
onoremap <silent> il| :call targets#omap('|', 'last select drop')
xnoremap <silent> in| :call targets#xmap('|', 'next select drop')
onoremap <silent> in| :call targets#omap('|', 'next select drop')
xnoremap <silent> i| :call targets#xmap('|', 'seekselect drop')
onoremap <silent> i| :call targets#omap('|', 'seekselect drop')
xnoremap <silent> iL\ :call targets#xmap('\', 'double last select drop')
onoremap <silent> iL\ :call targets#omap('\', 'double last select drop')
xnoremap <silent> iN\ :call targets#xmap('\', 'double next select drop')
onoremap <silent> iN\ :call targets#omap('\', 'double next select drop')
xnoremap <silent> il\ :call targets#xmap('\', 'last select drop')
onoremap <silent> il\ :call targets#omap('\', 'last select drop')
xnoremap <silent> in\ :call targets#xmap('\', 'next select drop')
onoremap <silent> in\ :call targets#omap('\', 'next select drop')
xnoremap <silent> i\ :call targets#xmap('\', 'seekselect drop')
onoremap <silent> i\ :call targets#omap('\', 'seekselect drop')
xnoremap <silent> iL/ :call targets#xmap('/', 'double last select drop')
onoremap <silent> iL/ :call targets#omap('/', 'double last select drop')
xnoremap <silent> iN/ :call targets#xmap('/', 'double next select drop')
onoremap <silent> iN/ :call targets#omap('/', 'double next select drop')
xnoremap <silent> il/ :call targets#xmap('/', 'last select drop')
onoremap <silent> il/ :call targets#omap('/', 'last select drop')
xnoremap <silent> in/ :call targets#xmap('/', 'next select drop')
onoremap <silent> in/ :call targets#omap('/', 'next select drop')
xnoremap <silent> i/ :call targets#xmap('/', 'seekselect drop')
onoremap <silent> i/ :call targets#omap('/', 'seekselect drop')
xnoremap <silent> iL* :call targets#xmap('*', 'double last select drop')
onoremap <silent> iL* :call targets#omap('*', 'double last select drop')
xnoremap <silent> iN* :call targets#xmap('*', 'double next select drop')
onoremap <silent> iN* :call targets#omap('*', 'double next select drop')
xnoremap <silent> il* :call targets#xmap('*', 'last select drop')
onoremap <silent> il* :call targets#omap('*', 'last select drop')
xnoremap <silent> in* :call targets#xmap('*', 'next select drop')
onoremap <silent> in* :call targets#omap('*', 'next select drop')
xnoremap <silent> i* :call targets#xmap('*', 'seekselect drop')
onoremap <silent> i* :call targets#omap('*', 'seekselect drop')
xnoremap <silent> iL_ :call targets#xmap('_', 'double last select drop')
onoremap <silent> iL_ :call targets#omap('_', 'double last select drop')
xnoremap <silent> iN_ :call targets#xmap('_', 'double next select drop')
onoremap <silent> iN_ :call targets#omap('_', 'double next select drop')
xnoremap <silent> il_ :call targets#xmap('_', 'last select drop')
onoremap <silent> il_ :call targets#omap('_', 'last select drop')
xnoremap <silent> in_ :call targets#xmap('_', 'next select drop')
onoremap <silent> in_ :call targets#omap('_', 'next select drop')
xnoremap <silent> i_ :call targets#xmap('_', 'seekselect drop')
onoremap <silent> i_ :call targets#omap('_', 'seekselect drop')
xnoremap <silent> iL~ :call targets#xmap('~', 'double last select drop')
onoremap <silent> iL~ :call targets#omap('~', 'double last select drop')
xnoremap <silent> iN~ :call targets#xmap('~', 'double next select drop')
onoremap <silent> iN~ :call targets#omap('~', 'double next select drop')
xnoremap <silent> il~ :call targets#xmap('~', 'last select drop')
onoremap <silent> il~ :call targets#omap('~', 'last select drop')
xnoremap <silent> in~ :call targets#xmap('~', 'next select drop')
onoremap <silent> in~ :call targets#omap('~', 'next select drop')
xnoremap <silent> i~ :call targets#xmap('~', 'seekselect drop')
onoremap <silent> i~ :call targets#omap('~', 'seekselect drop')
xnoremap <silent> iL- :call targets#xmap('-', 'double last select drop')
onoremap <silent> iL- :call targets#omap('-', 'double last select drop')
xnoremap <silent> iN- :call targets#xmap('-', 'double next select drop')
onoremap <silent> iN- :call targets#omap('-', 'double next select drop')
xnoremap <silent> il- :call targets#xmap('-', 'last select drop')
onoremap <silent> il- :call targets#omap('-', 'last select drop')
xnoremap <silent> in- :call targets#xmap('-', 'next select drop')
onoremap <silent> in- :call targets#omap('-', 'next select drop')
xnoremap <silent> i- :call targets#xmap('-', 'seekselect drop')
onoremap <silent> i- :call targets#omap('-', 'seekselect drop')
xnoremap <silent> iL+ :call targets#xmap('+', 'double last select drop')
onoremap <silent> iL+ :call targets#omap('+', 'double last select drop')
xnoremap <silent> iN+ :call targets#xmap('+', 'double next select drop')
onoremap <silent> iN+ :call targets#omap('+', 'double next select drop')
xnoremap <silent> il+ :call targets#xmap('+', 'last select drop')
onoremap <silent> il+ :call targets#omap('+', 'last select drop')
xnoremap <silent> in+ :call targets#xmap('+', 'next select drop')
onoremap <silent> in+ :call targets#omap('+', 'next select drop')
xnoremap <silent> i+ :call targets#xmap('+', 'seekselect drop')
onoremap <silent> i+ :call targets#omap('+', 'seekselect drop')
xnoremap <silent> iL: :call targets#xmap(':', 'double last select drop')
onoremap <silent> iL: :call targets#omap(':', 'double last select drop')
xnoremap <silent> iN: :call targets#xmap(':', 'double next select drop')
onoremap <silent> iN: :call targets#omap(':', 'double next select drop')
xnoremap <silent> il: :call targets#xmap(':', 'last select drop')
onoremap <silent> il: :call targets#omap(':', 'last select drop')
xnoremap <silent> in: :call targets#xmap(':', 'next select drop')
onoremap <silent> in: :call targets#omap(':', 'next select drop')
xnoremap <silent> i: :call targets#xmap(':', 'seekselect drop')
onoremap <silent> i: :call targets#omap(':', 'seekselect drop')
xnoremap <silent> iL; :call targets#xmap(';', 'double last select drop')
onoremap <silent> iL; :call targets#omap(';', 'double last select drop')
xnoremap <silent> iN; :call targets#xmap(';', 'double next select drop')
onoremap <silent> iN; :call targets#omap(';', 'double next select drop')
xnoremap <silent> il; :call targets#xmap(';', 'last select drop')
onoremap <silent> il; :call targets#omap(';', 'last select drop')
xnoremap <silent> in; :call targets#xmap(';', 'next select drop')
onoremap <silent> in; :call targets#omap(';', 'next select drop')
xnoremap <silent> i; :call targets#xmap(';', 'seekselect drop')
onoremap <silent> i; :call targets#omap(';', 'seekselect drop')
xnoremap <silent> iL. :call targets#xmap('.', 'double last select drop')
onoremap <silent> iL. :call targets#omap('.', 'double last select drop')
xnoremap <silent> iN. :call targets#xmap('.', 'double next select drop')
onoremap <silent> iN. :call targets#omap('.', 'double next select drop')
xnoremap <silent> il. :call targets#xmap('.', 'last select drop')
onoremap <silent> il. :call targets#omap('.', 'last select drop')
xnoremap <silent> in. :call targets#xmap('.', 'next select drop')
onoremap <silent> in. :call targets#omap('.', 'next select drop')
xnoremap <silent> i. :call targets#xmap('.', 'seekselect drop')
onoremap <silent> i. :call targets#omap('.', 'seekselect drop')
xnoremap <silent> iLc :call targets#xmap(',', 'double last select drop')
onoremap <silent> iLc :call targets#omap(',', 'double last select drop')
xnoremap <silent> iL, :call targets#xmap(',', 'double last select drop')
onoremap <silent> iL, :call targets#omap(',', 'double last select drop')
xnoremap <silent> iNc :call targets#xmap(',', 'double next select drop')
onoremap <silent> iNc :call targets#omap(',', 'double next select drop')
xnoremap <silent> iN, :call targets#xmap(',', 'double next select drop')
onoremap <silent> iN, :call targets#omap(',', 'double next select drop')
xnoremap <silent> ilc :call targets#xmap(',', 'last select drop')
onoremap <silent> ilc :call targets#omap(',', 'last select drop')
xnoremap <silent> il, :call targets#xmap(',', 'last select drop')
onoremap <silent> il, :call targets#omap(',', 'last select drop')
xnoremap <silent> inc :call targets#xmap(',', 'next select drop')
onoremap <silent> inc :call targets#omap(',', 'next select drop')
xnoremap <silent> in, :call targets#xmap(',', 'next select drop')
onoremap <silent> in, :call targets#omap(',', 'next select drop')
xnoremap <silent> ic :call targets#xmap(',', 'seekselect drop')
onoremap <silent> ic :call targets#omap(',', 'seekselect drop')
xnoremap <silent> i, :call targets#xmap(',', 'seekselect drop')
onoremap <silent> i, :call targets#omap(',', 'seekselect drop')
xnoremap <silent> iL` :call targets#xmap('`', 'quote double last select drop')
onoremap <silent> iL` :call targets#omap('`', 'quote double last select drop')
xnoremap <silent> iN` :call targets#xmap('`', 'quote double next select drop')
onoremap <silent> iN` :call targets#omap('`', 'quote double next select drop')
xnoremap <silent> iL' :call targets#xmap('''', 'quote double last select drop')
onoremap <silent> iL' :call targets#omap('''', 'quote double last select drop')
xnoremap <silent> iN' :call targets#xmap('''', 'quote double next select drop')
onoremap <silent> iN' :call targets#omap('''', 'quote double next select drop')
xnoremap <silent> il' :call targets#xmap('''', 'quote last select drop')
onoremap <silent> il' :call targets#omap('''', 'quote last select drop')
xnoremap <silent> in' :call targets#xmap('''', 'quote next select drop')
onoremap <silent> in' :call targets#omap('''', 'quote next select drop')
xnoremap <silent> i' :call targets#xmap('''', 'quote seekselect drop')
onoremap <silent> i' :call targets#omap('''', 'quote seekselect drop')
xnoremap <silent> iLd :call targets#xmap('"', 'quote double last select drop')
onoremap <silent> iLd :call targets#omap('"', 'quote double last select drop')
xnoremap <silent> iL" :call targets#xmap('"', 'quote double last select drop')
onoremap <silent> iL" :call targets#omap('"', 'quote double last select drop')
xnoremap <silent> iNd :call targets#xmap('"', 'quote double next select drop')
onoremap <silent> iNd :call targets#omap('"', 'quote double next select drop')
xnoremap <silent> iN" :call targets#xmap('"', 'quote double next select drop')
onoremap <silent> iN" :call targets#omap('"', 'quote double next select drop')
xnoremap <silent> ild :call targets#xmap('"', 'quote last select drop')
onoremap <silent> ild :call targets#omap('"', 'quote last select drop')
xnoremap <silent> il" :call targets#xmap('"', 'quote last select drop')
onoremap <silent> il" :call targets#omap('"', 'quote last select drop')
xnoremap <silent> ind :call targets#xmap('"', 'quote next select drop')
onoremap <silent> ind :call targets#omap('"', 'quote next select drop')
xnoremap <silent> in" :call targets#xmap('"', 'quote next select drop')
onoremap <silent> in" :call targets#omap('"', 'quote next select drop')
xnoremap <silent> id :call targets#xmap('"', 'quote seekselect drop')
onoremap <silent> id :call targets#omap('"', 'quote seekselect drop')
xnoremap <silent> i" :call targets#xmap('"', 'quote seekselect drop')
onoremap <silent> i" :call targets#omap('"', 'quote seekselect drop')
xnoremap <silent> ilt :call targets#xmap('t', 'lastt selectp dropt')
onoremap <silent> ilt :call targets#omap('t', 'lastt selectp dropt')
xnoremap <silent> il` :call targets#xmap('`', 'quote last select drop')
onoremap <silent> il` :call targets#omap('`', 'quote last select drop')
xnoremap <silent> int :call targets#xmap('t', 'nextt selectp dropt')
onoremap <silent> int :call targets#omap('t', 'nextt selectp dropt')
xnoremap <silent> in` :call targets#xmap('`', 'quote next select drop')
onoremap <silent> in` :call targets#omap('`', 'quote next select drop')
xnoremap <silent> it :call targets#xmap('t', 'grow seekselectt dropt')
onoremap <silent> it :call targets#omap('t', 'grow seekselectt dropt')
xnoremap <silent> i` :call targets#xmap('`', 'quote seekselect drop')
onoremap <silent> i` :call targets#omap('`', 'quote seekselect drop')
xnoremap <silent> ila :call targets#xmap('<>', 'lastp selectp drop')
onoremap <silent> ila :call targets#omap('<>', 'lastp selectp drop')
xnoremap <silent> il> :call targets#xmap('<>', 'lastp selectp drop')
onoremap <silent> il> :call targets#omap('<>', 'lastp selectp drop')
xnoremap <silent> il< :call targets#xmap('<>', 'lastp selectp drop')
onoremap <silent> il< :call targets#omap('<>', 'lastp selectp drop')
xnoremap <silent> ina :call targets#xmap('<>', 'nextp selectp drop')
onoremap <silent> ina :call targets#omap('<>', 'nextp selectp drop')
xnoremap <silent> in> :call targets#xmap('<>', 'nextp selectp drop')
onoremap <silent> in> :call targets#omap('<>', 'nextp selectp drop')
xnoremap <silent> in< :call targets#xmap('<>', 'nextp selectp drop')
onoremap <silent> in< :call targets#omap('<>', 'nextp selectp drop')
xnoremap <silent> ia :call targets#xmap('<>', 'grow seekselectp drop')
onoremap <silent> ia :call targets#omap('<>', 'grow seekselectp drop')
xnoremap <silent> i> :call targets#xmap('<>', 'grow seekselectp drop')
onoremap <silent> i> :call targets#omap('<>', 'grow seekselectp drop')
xnoremap <silent> i< :call targets#xmap('<>', 'grow seekselectp drop')
onoremap <silent> i< :call targets#omap('<>', 'grow seekselectp drop')
xnoremap <silent> ilr :call targets#xmap('[]', 'lastp selectp drop')
onoremap <silent> ilr :call targets#omap('[]', 'lastp selectp drop')
xnoremap <silent> il] :call targets#xmap('[]', 'lastp selectp drop')
onoremap <silent> il] :call targets#omap('[]', 'lastp selectp drop')
xnoremap <silent> il[ :call targets#xmap('[]', 'lastp selectp drop')
onoremap <silent> il[ :call targets#omap('[]', 'lastp selectp drop')
xnoremap <silent> inr :call targets#xmap('[]', 'nextp selectp drop')
onoremap <silent> inr :call targets#omap('[]', 'nextp selectp drop')
xnoremap <silent> in] :call targets#xmap('[]', 'nextp selectp drop')
onoremap <silent> in] :call targets#omap('[]', 'nextp selectp drop')
xnoremap <silent> in[ :call targets#xmap('[]', 'nextp selectp drop')
onoremap <silent> in[ :call targets#omap('[]', 'nextp selectp drop')
xnoremap <silent> ir :call targets#xmap('[]', 'grow seekselectp drop')
onoremap <silent> ir :call targets#omap('[]', 'grow seekselectp drop')
xnoremap <silent> i] :call targets#xmap('[]', 'grow seekselectp drop')
onoremap <silent> i] :call targets#omap('[]', 'grow seekselectp drop')
xnoremap <silent> i[ :call targets#xmap('[]', 'grow seekselectp drop')
onoremap <silent> i[ :call targets#omap('[]', 'grow seekselectp drop')
xnoremap <silent> ilB :call targets#xmap('{}', 'lastp selectp drop')
onoremap <silent> ilB :call targets#omap('{}', 'lastp selectp drop')
xnoremap <silent> il} :call targets#xmap('{}', 'lastp selectp drop')
onoremap <silent> il} :call targets#omap('{}', 'lastp selectp drop')
xnoremap <silent> il{ :call targets#xmap('{}', 'lastp selectp drop')
onoremap <silent> il{ :call targets#omap('{}', 'lastp selectp drop')
xnoremap <silent> inB :call targets#xmap('{}', 'nextp selectp drop')
onoremap <silent> inB :call targets#omap('{}', 'nextp selectp drop')
xnoremap <silent> in} :call targets#xmap('{}', 'nextp selectp drop')
onoremap <silent> in} :call targets#omap('{}', 'nextp selectp drop')
xnoremap <silent> in{ :call targets#xmap('{}', 'nextp selectp drop')
onoremap <silent> in{ :call targets#omap('{}', 'nextp selectp drop')
xnoremap <silent> iB :call targets#xmap('{}', 'grow seekselectp drop')
onoremap <silent> iB :call targets#omap('{}', 'grow seekselectp drop')
xnoremap <silent> i} :call targets#xmap('{}', 'grow seekselectp drop')
onoremap <silent> i} :call targets#omap('{}', 'grow seekselectp drop')
xnoremap <silent> i{ :call targets#xmap('{}', 'grow seekselectp drop')
onoremap <silent> i{ :call targets#omap('{}', 'grow seekselectp drop')
xnoremap <silent> ilb :call targets#xmap('()', 'lastp selectp drop')
onoremap <silent> ilb :call targets#omap('()', 'lastp selectp drop')
xnoremap <silent> il) :call targets#xmap('()', 'lastp selectp drop')
onoremap <silent> il) :call targets#omap('()', 'lastp selectp drop')
xnoremap <silent> il( :call targets#xmap('()', 'lastp selectp drop')
onoremap <silent> il( :call targets#omap('()', 'lastp selectp drop')
xnoremap <silent> inb :call targets#xmap('()', 'nextp selectp drop')
onoremap <silent> inb :call targets#omap('()', 'nextp selectp drop')
xnoremap <silent> in) :call targets#xmap('()', 'nextp selectp drop')
onoremap <silent> in) :call targets#omap('()', 'nextp selectp drop')
xnoremap <silent> in( :call targets#xmap('()', 'nextp selectp drop')
onoremap <silent> in( :call targets#omap('()', 'nextp selectp drop')
xnoremap <silent> ib :call targets#xmap('()', 'grow seekselectp drop')
onoremap <silent> ib :call targets#omap('()', 'grow seekselectp drop')
xnoremap <silent> i) :call targets#xmap('()', 'grow seekselectp drop')
onoremap <silent> i) :call targets#omap('()', 'grow seekselectp drop')
xnoremap <silent> i( :call targets#xmap('()', 'grow seekselectp drop')
onoremap <silent> i( :call targets#omap('()', 'grow seekselectp drop')
xmap <silent> i,e <Plug>CamelCaseMotion_ie
xmap <silent> i,b <Plug>CamelCaseMotion_ib
xmap <silent> i,w <Plug>CamelCaseMotion_iw
omap <silent> i,e <Plug>CamelCaseMotion_ie
omap <silent> i,b <Plug>CamelCaseMotion_ib
omap <silent> i,w <Plug>CamelCaseMotion_iw
vnoremap v <Plug>(expand_region_expand)
nnoremap v 
map <silent> w <Plug>CamelCaseMotion_w
nmap ySS <Plug>YSsurround
nmap ySs <Plug>YSsurround
nmap yss <Plug>Yssurround
nmap yS <Plug>YSurround
nmap ys <Plug>Ysurround
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#NetrwBrowseX(expand("<cfile>"),0)
nmap <SNR>67_WE <Plug>AlignMapsWrapperEnd
map <SNR>67_WS <Plug>AlignMapsWrapperStart
nmap <silent> <Plug>unimpairedOPrevious <Plug>unimpairedDirectoryPrevious:echohl WarningMSG|echo "[o is deprecated. Use [f"|echohl NONE
nmap <silent> <Plug>unimpairedONext <Plug>unimpairedDirectoryNext:echohl WarningMSG|echo "]o is deprecated. Use ]f"|echohl NONE
nnoremap <silent> <Plug>unimpairedTLast :exe "".(v:count ? v:count : "")."tlast"
nnoremap <silent> <Plug>unimpairedTFirst :exe "".(v:count ? v:count : "")."tfirst"
nnoremap <silent> <Plug>unimpairedTNext :exe "".(v:count ? v:count : "")."tnext"
nnoremap <silent> <Plug>unimpairedTPrevious :exe "".(v:count ? v:count : "")."tprevious"
nnoremap <silent> <Plug>unimpairedQNFile :exe "".(v:count ? v:count : "")."cnfile"zv
nnoremap <silent> <Plug>unimpairedQPFile :exe "".(v:count ? v:count : "")."cpfile"zv
nnoremap <silent> <Plug>unimpairedQLast :exe "".(v:count ? v:count : "")."clast"zv
nnoremap <silent> <Plug>unimpairedQFirst :exe "".(v:count ? v:count : "")."cfirst"zv
nnoremap <silent> <Plug>unimpairedQNext :exe "".(v:count ? v:count : "")."cnext"zv
nnoremap <silent> <Plug>unimpairedQPrevious :exe "".(v:count ? v:count : "")."cprevious"zv
nnoremap <silent> <Plug>unimpairedLNFile :exe "".(v:count ? v:count : "")."lnfile"zv
nnoremap <silent> <Plug>unimpairedLPFile :exe "".(v:count ? v:count : "")."lpfile"zv
nnoremap <silent> <Plug>unimpairedLLast :exe "".(v:count ? v:count : "")."llast"zv
nnoremap <silent> <Plug>unimpairedLFirst :exe "".(v:count ? v:count : "")."lfirst"zv
nnoremap <silent> <Plug>unimpairedLNext :exe "".(v:count ? v:count : "")."lnext"zv
nnoremap <silent> <Plug>unimpairedLPrevious :exe "".(v:count ? v:count : "")."lprevious"zv
nnoremap <silent> <Plug>unimpairedBLast :exe "".(v:count ? v:count : "")."blast"
nnoremap <silent> <Plug>unimpairedBFirst :exe "".(v:count ? v:count : "")."bfirst"
nnoremap <silent> <Plug>unimpairedBNext :exe "".(v:count ? v:count : "")."bnext"
nnoremap <silent> <Plug>unimpairedBPrevious :exe "".(v:count ? v:count : "")."bprevious"
nnoremap <silent> <Plug>unimpairedALast :exe "".(v:count ? v:count : "")."last"
nnoremap <silent> <Plug>unimpairedAFirst :exe "".(v:count ? v:count : "")."first"
nnoremap <silent> <Plug>unimpairedANext :exe "".(v:count ? v:count : "")."next"
nnoremap <silent> <Plug>unimpairedAPrevious :exe "".(v:count ? v:count : "")."previous"
nnoremap <silent> <Plug>SurroundRepeat .
xnoremap <silent> <Plug>(expand_region_shrink) :call expand_region#next('v', '-')
xnoremap <silent> <Plug>(expand_region_expand) :call expand_region#next('v', '+')
nnoremap <silent> <Plug>(expand_region_expand) :call expand_region#next('n', '+')
nmap <silent> <Plug>RestoreWinPosn :call RestoreWinPosn()
nmap <silent> <Plug>SaveWinPosn :call SaveWinPosn()
vnoremap <silent> <Plug>CamelCaseMotion_ie :call camelcasemotion#InnerMotion('e',v:count1)
vnoremap <silent> <Plug>CamelCaseMotion_ib :call camelcasemotion#InnerMotion('b',v:count1)
vnoremap <silent> <Plug>CamelCaseMotion_iw :call camelcasemotion#InnerMotion('w',v:count1)
onoremap <silent> <Plug>CamelCaseMotion_ie :call camelcasemotion#InnerMotion('e',v:count1)
onoremap <silent> <Plug>CamelCaseMotion_ib :call camelcasemotion#InnerMotion('b',v:count1)
onoremap <silent> <Plug>CamelCaseMotion_iw :call camelcasemotion#InnerMotion('w',v:count1)
vnoremap <silent> <Plug>CamelCaseMotion_e :call camelcasemotion#Motion('e',v:count1,'v')
vnoremap <silent> <Plug>CamelCaseMotion_b :call camelcasemotion#Motion('b',v:count1,'v')
vnoremap <silent> <Plug>CamelCaseMotion_w :call camelcasemotion#Motion('w',v:count1,'v')
onoremap <silent> <Plug>CamelCaseMotion_e :call camelcasemotion#Motion('e',v:count1,'o')
onoremap <silent> <Plug>CamelCaseMotion_b :call camelcasemotion#Motion('b',v:count1,'o')
onoremap <silent> <Plug>CamelCaseMotion_w :call camelcasemotion#Motion('w',v:count1,'o')
nnoremap <silent> <Plug>CamelCaseMotion_e :call camelcasemotion#Motion('e',v:count1,'n')
nnoremap <silent> <Plug>CamelCaseMotion_b :call camelcasemotion#Motion('b',v:count1,'n')
nnoremap <silent> <Plug>CamelCaseMotion_w :call camelcasemotion#Motion('w',v:count1,'n')
nmap <silent> <Plug>NERDCommenterAppend :call NERDComment(0, "append")
nnoremap <silent> <Plug>NERDCommenterToEOL :call NERDComment(0, "toEOL")
vnoremap <silent> <Plug>NERDCommenterUncomment :call NERDComment(1, "uncomment")
nnoremap <silent> <Plug>NERDCommenterUncomment :call NERDComment(0, "uncomment")
vnoremap <silent> <Plug>NERDCommenterNest :call NERDComment(1, "nested")
nnoremap <silent> <Plug>NERDCommenterNest :call NERDComment(0, "nested")
vnoremap <silent> <Plug>NERDCommenterAlignBoth :call NERDComment(1, "alignBoth")
nnoremap <silent> <Plug>NERDCommenterAlignBoth :call NERDComment(0, "alignBoth")
vnoremap <silent> <Plug>NERDCommenterAlignLeft :call NERDComment(1, "alignLeft")
nnoremap <silent> <Plug>NERDCommenterAlignLeft :call NERDComment(0, "alignLeft")
vmap <silent> <Plug>NERDCommenterYank :call NERDComment(1, "yank")
nmap <silent> <Plug>NERDCommenterYank :call NERDComment(0, "yank")
vnoremap <silent> <Plug>NERDCommenterInvert :call NERDComment(1, "invert")
nnoremap <silent> <Plug>NERDCommenterInvert :call NERDComment(0, "invert")
vnoremap <silent> <Plug>NERDCommenterSexy :call NERDComment(1, "sexy")
nnoremap <silent> <Plug>NERDCommenterSexy :call NERDComment(0, "sexy")
vnoremap <silent> <Plug>NERDCommenterMinimal :call NERDComment(1, "minimal")
nnoremap <silent> <Plug>NERDCommenterMinimal :call NERDComment(0, "minimal")
vnoremap <silent> <Plug>NERDCommenterToggle :call NERDComment(1, "toggle")
nnoremap <silent> <Plug>NERDCommenterToggle :call NERDComment(0, "toggle")
vnoremap <silent> <Plug>NERDCommenterComment :call NERDComment(1, "norm")
nnoremap <silent> <Plug>NERDCommenterComment :call NERDComment(0, "norm")
snoremap <silent> <Del> c
snoremap <silent> <BS> c
snoremap <silent> <C-S-Tab> :call UltiSnips#ListSnippets()
xnoremap <silent> <S-Tab> :call UltiSnips#SaveLastVisualSelection()gvs
snoremap <silent> <S-Tab> :call UltiSnips#ExpandSnippet()
nnoremap <C-S-Tab> :bprevious
nnoremap <C-Tab> :bnext
vnoremap <expr> <Up> DVB_Drag('up')
vnoremap <expr> <Down> DVB_Drag('down')
vnoremap <expr> <Right> DVB_Drag('right')
vnoremap <expr> <Left> DVB_Drag('left')
nnoremap <F10> :call ToggleYCM()
nnoremap <C-S-F9> :call TogglePaste()
vnoremap <C-F9> :call ToggleFoldColumn()
nnoremap <C-F9> :call ToggleFoldColumn()
nnoremap <S-F9> :call ToggleWrap()
vnoremap <F9> :call ToggleTextwidth()
nnoremap <F9> :call ToggleTextwidth()
vnoremap <M-S-F8> :call AutoCorrect()
nnoremap <M-S-F8> :call AutoCorrect()
nnoremap <M-F8> :w !detex | wc -w
nnoremap <C-F8> :w!:!/usr/bin/aspell --dont-backup --dont-tex-check-comments check %:e! %
nnoremap <F8> :call ToggleSpell()
vnoremap <S-F7> :LanguageToolCheck:vertical  lopen  80
nnoremap <S-F7> :LanguageToolCheck:vertical  lopen  80
vnoremap <F7> :'a,'sLanguageToolCheck:vertical  lopen  80
nnoremap <F7> :'a,'sLanguageToolCheck:vertical  lopen  80
nnoremap <C-S-F6> :BundleInstall!
nnoremap <S-F6> :BundleInstall
nnoremap <C-F6> :BundleClean!
nnoremap <F6> :BundleList
nnoremap <F5> :FufMruFile
nnoremap <C-F4> :FufFile
nnoremap <S-F4> :FufFileWithFullCwd
nnoremap <F4> :FufFileWithCurrentBufferDir
nnoremap <S-F3> :buffer
nnoremap <F3> :FufBuffer
nnoremap <C-S-F2> :mks!:wqall!
nnoremap <silent> <F2> :exe "mks\! | w | so $MYVIMRC | %foldo!"
vnoremap <S-F1> :echo expand('%:p')
nnoremap <S-F1> :echo expand('%:p')
vnoremap <C-F1> :lcd %:p:h:echo expand('%:p')
nnoremap <C-F1> :lcd %:p:h:echo expand('%:p')
vnoremap <F1> :lcd %:p:h:echo expand('%:p')
nnoremap <F1> :lcd %:p:h:echo expand('%:p')
imap S <Plug>ISurround
imap s <Plug>Isurround
imap  <Plug>Isurround
inoremap <silent>  K =(ExpandPossibleShorterSnippet() == 0? '': UltiSnips#ExpandSnippet())
inoremap <silent> $$ $$=UltiSnips#Anon(':latex:\$1\', '$$')
inoremap <silent> (( ((=UltiSnips#Anon('(${1:${VISUAL}})', '((', '', 'i')
imap ,qq <Plug>RClose
imap ,R <Plug>RStart
inoremap ,p :'{,'}
inoremap ,s :'(,')
inoremap ,v :'<,'>
inoremap ,cx :XeLatexCompilePDF
inoremap ,cl :LatexCompilePDF
inoremap ,ct :TexCompilePDF
inoremap <silent> ,md :exe 'delm! | delm A-Z0-9 | echom "all marks removed!"'
inoremap <silent> ,mn :NoShowMarks
inoremap <silent> ,ms :DoShowMarks
cnoremap :s/ :s/\v
inoremap <expr> <K> BDG_GetDigraph()
vmap µ 5gt
nmap µ 5gt
vmap ´ 4gt
nmap ´ 4gt
vmap ³ 3gt
nmap ³ 3gt
vmap ² 2gt
nmap ² 2gt
vmap ± 1gt
nmap ± 1gt
inoremap <silent> [[ [[=UltiSnips#Anon(':latex:\$1\', '[[')
inoremap <silent> \K =(ExpandPossibleShorterSnippet() == 0? '': UltiSnips#ExpandSnippet())
cmap w!! w !sudo tee % >/dev/null
let &cpo=s:cpo_save
unlet s:cpo_save
set backspace=indent,eol,start
set backupskip=/tmp/*,$TMPDIR/*,$TMP/*,$TEMP/*,*test*,*temp*,*tmp*,*tst*,*~,*bak
set cmdheight=3
set cmdwinheight=3
set comments=sO:%\ -,mO:%\ \ ,eO:%%,:%,s2:/*,mb:*,ex:*/,://,b:#,:XCOMM,n:>,b:-
set complete=.,w,b,u,t,i,k
set confirm
set copyindent
set cpoptions=aABceFsmq
set dictionary=~/.aspell.de.pws,~/.vim/spell
set expandtab
set fileencodings=ucs-bom,utf-8,default,latin1
set fileformats=unix,dos,mac
set foldclose=all
set foldlevelstart=0
set foldopen=block,hor,mark,percent,quickfix,search,tag,undo,insert,jump
set formatoptions=tcqrnl
set helplang=de
set hidden
set hlsearch
set ignorecase
set incsearch
set iskeyword=@,48-57,_,192-255,.
set laststatus=2
set lazyredraw
set listchars=tab:»»,trail:·,nbsp:~
set matchpairs=(:),{:},[:],<:>
set matchtime=2
set modelines=3
set omnifunc=syntaxcomplete#Complete
set path=~/Dokumente/Linux/QRCs/**,~/Unimaterialien
set ruler
set rulerformat=%25(%n%m%r:\ %Y\ [%l,%v]\ %p%%%)
set runtimepath=~/.vim,~/.vim/bundle/vundle,~/.vim/bundle/BufOnly.vim,~/.vim/bundle/L9,~/.vim/bundle/LaTeX-Box,~/.vim/bundle/ultisnips,~/.vim/bundle/The-NERD-Commenter,~/.vim/bundle/vim-colors-solarized,~/.vim/bundle/frisk,~/.vim/bundle/CamelCaseMotion,~/.vim/bundle/vim-tmux-navigator,~/.vim/bundle/vim-snippets,~/.vim/bundle/vim-showmarks,~/.vim/bundle/Vim-R-plugin,~/.vim/bundle/matchit.zip,~/.vim/bundle/vim-tex-fold,~/.vim/bundle/vis.vim,~/.vim/bundle/vim-markdown-folding,~/.vim/bundle/syntastic,~/.vim/bundle/vim-expand-region,~/.vim/bundle/vim-exchange,~/.vim/bundle/vim-fugitive,~/.vim/bundle/vim-git,~/.vim/bundle/vim-obsession,~/.vim/bundle/vim-repeat,~/.vim/bundle/vim-surround,~/.vim/bundle/vim-unimpaired,~/.vim/bundle/Align,~/.vim/bundle/ExtractLinks,~/.vim/bundle/FuzzyFinder,~/.vim/bundle/LanguageTool,~/.vim/bundle/targets.vim,~/.vim/bundle/YouCompleteMe,~/.vim/bundle/VimCom,~/.vim/bundle/vim-ycm-tex,~/.vim/bundle/ingo-library,~/.vim/bundle/extractmatches,~/.vim/bundle/PatternsOnText,/usr/share/vim/vimfiles,/usr/share/vim/vim74,/usr/share/vim/vimfiles/after,~/.vim/after,~/.vim/plugin/,~/.vim/bundle/vundle/,~/.vim/bundle/vundle/after,~/.vim/bundle/BufOnly.vim/after,~/.vim/bundle/L9/after,~/.vim/bundle/LaTeX-Box/after,~/.vim/bundle/ultisnips/after,~/.vim/bundle/The-NERD-Commenter/after,~/.vim/bundle/vim-colors-solarized/after,~/.vim/bundle/frisk/after,~/.vim/bundle/CamelCaseMotion/after,~/.vim/bundle/vim-tmux-navigator/after,~/.vim/bundle/vim-snippets/after,~/.vim/bundle/vim-showmarks/after,~/.vim/bundle/Vim-R-plugin/after,~/.vim/bundle/matchit.zip/after,~/.vim/bundle/vim-tex-fold/after,~/.vim/bundle/vis.vim/after,~/.vim/bundle/vim-markdown-folding/after,~/.vim/bundle/syntastic/after,~/.vim/bundle/vim-expand-region/after,~/.vim/bundle/vim-exchange/after,~/.vim/bundle/vim-fugitive/after,~/.vim/bundle/vim-git/after,~/.vim/bundle/vim-obsession/after,~/.vim/bundle/vim-repeat/after,~/.vim/bundle/vim-surround/after,~/.vim/bundle/vim-unimpaired/after,~/.vim/bundle/Align/after,~/.vim/bundle/ExtractLinks/after,~/.vim/bundle/FuzzyFinder/after,~/.vim/bundle/LanguageTool/after,~/.vim/bundle/targets.vim/after,~/.vim/bundle/YouCompleteMe/after,~/.vim/bundle/VimCom/after,~/.vim/bundle/vim-ycm-tex/after,~/.vim/bundle/ingo-library/after,~/.vim/bundle/extractmatches/after,~/.vim/bundle/PatternsOnText/after
set scrolloff=5
set scrollopt=ver,jump,hor
set shell=/bin/bash\ --rcfile\ ~/.bashrc
set shiftround
set shiftwidth=4
set shortmess=filnxToOatI
set showmatch
set smartindent
set smarttab
set softtabstop=4
set nostartofline
set statusline=%2*%02n%1*|%t|%2*%{&fo}|%3*%{(fugitive#head()!=\"\"?'\ <\ ':'')}%3*%{(fugitive#head()!=\"\"?fugitive#head():'')}%3*%{(fugitive#head()!=\"\"?'\ \ >':'')}%2*%=%((%{&ff}|%{(strlen(&fenc)?&enc:&fenc)}%k|%Y)%)%2*\ %(%l,%v|%02p%%\ %)
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.out,.toc
set switchbuf=useopen,usetab
set tabstop=4
set thesaurus=~/.vim/thesaurus/thes_de.txt,~/.vim/thesaurus/thes_eng.txt
set title
set ttyscroll=0
set updatetime=1000
set viminfo='10,\"500,:20,%,n~/.viminfo
set visualbell
set wildignore=*.a,*.aut,*.aux,*.bak,*.bbl,*.blg,*.cmi,*.cmo,*.cmx,*.cmxa,*.dvi,*.exe,*.fff,*.lo,*.log,*.o,*.obj,*.out,*.pdf,*.ps,*.py[co],*.swp,*.toc,*.ttt,*~,.svn
set wildmenu
set winheight=30
set winminheight=0
set winwidth=55
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/Dokumente/Linux/QRCs
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +0 qrcVim.tex
badd +0 fugitive:///home/zapata/Dokumente/Linux/QRCs/.git//eeaa4fe9a27a4a641e3a1b54c9d289c69f6d982c/qrcVim.tex
argglobal
silent! argdel *
argadd qrcVim.tex
edit fugitive:///home/zapata/Dokumente/Linux/QRCs/.git//eeaa4fe9a27a4a641e3a1b54c9d289c69f6d982c/qrcVim.tex
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 84 + 84) / 168)
exe 'vert 2resize ' . ((&columns * 83 + 84) / 168)
argglobal
setlocal keymap=
setlocal noarabic
setlocal noautoindent
setlocal balloonexpr=
setlocal nobinary
setlocal bufhidden=delete
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:%\ -,mO:%\ \ ,eO:%%,:%,s2:/*,mb:*,ex:*/,://,b:#,:XCOMM,n:>,b:-
setlocal commentstring=%%s
setlocal complete=.,w,b,u,t,i,k
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal copyindent
setlocal cryptmethod=
setlocal cursorbind
set cursorcolumn
setlocal cursorcolumn
set cursorline
setlocal cursorline
setlocal define=\\\\\\([egx]\\|char\\|mathchar\\|count\\|dimen\\|muskip\\|skip\\|toks\\)\\=def\\|\\\\font\\|\\\\\\(future\\)\\=let\\|\\\\new\\(count\\|dimen\\|skip\\|muskip\\|box\\|toks\\|read\\|write\\|fam\\|insert\\)
setlocal dictionary=
setlocal diff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'plaintex'
setlocal filetype=plaintex
endif
set foldcolumn=4
setlocal foldcolumn=4
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
set foldlevel=1
setlocal foldlevel=1
setlocal foldmarker={{{,}}}
setlocal foldmethod=diff
setlocal foldminlines=1
set foldnestmax=2
setlocal foldnestmax=2
set foldtext=MyFoldText()
setlocal foldtext=MyFoldText()
setlocal formatexpr=
setlocal formatoptions=tcqrnl
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=\\\\input
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e,},\\item,\\bibitem,\\else,\\fi,\\or,\\]
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,.
setlocal keywordprg=trs\ {es=@es+de}
set linebreak
setlocal linebreak
setlocal nolisp
setlocal lispwords=
set list
setlocal list
setlocal makeprg=
setlocal matchpairs=(:),{:},[:],<:>
setlocal modeline
setlocal nomodifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=syntaxcomplete#Complete
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal readonly
set relativenumber
setlocal relativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal scrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal smartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=.tex
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'plaintex'
setlocal syntax=plaintex
endif
setlocal tabstop=4
setlocal tags=~/Dokumente/Linux/QRCs/.git/plaintex.tags,~/Dokumente/Linux/QRCs/.git/tags,./tags,./TAGS,tags,TAGS
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal nowrap
setlocal wrapmargin=0
let s:l = 282 - ((12 * winheight(0) + 9) / 18)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
282
normal! 0
wincmd w
argglobal
edit qrcVim.tex
setlocal keymap=
setlocal noarabic
setlocal noautoindent
setlocal balloonexpr=
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:%\ -,mO:%\ \ ,eO:%%,:%
setlocal commentstring=%%s
setlocal complete=.,w,b,u,t,i,k
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal copyindent
setlocal cryptmethod=
setlocal cursorbind
set cursorcolumn
setlocal cursorcolumn
set cursorline
setlocal cursorline
setlocal define=\\\\\\([egx]\\|char\\|mathchar\\|count\\|dimen\\|muskip\\|skip\\|toks\\)\\=def\\|\\\\font\\|\\\\\\(future\\)\\=let\\|\\\\new\\(count\\|dimen\\|skip\\|muskip\\|box\\|toks\\|read\\|write\\|fam\\|insert\\)
setlocal dictionary=
setlocal diff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'plaintex'
setlocal filetype=plaintex
endif
set foldcolumn=4
setlocal foldcolumn=4
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
set foldlevel=1
setlocal foldlevel=1
setlocal foldmarker={{{,}}}
setlocal foldmethod=diff
setlocal foldminlines=1
set foldnestmax=2
setlocal foldnestmax=2
set foldtext=MyFoldText()
setlocal foldtext=MyFoldText()
setlocal formatexpr=
setlocal formatoptions=tcqrnl
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=\\\\input
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e,},\\item,\\bibitem,\\else,\\fi,\\or,\\]
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,.
setlocal keywordprg=trs\ {es=@es+de}
set linebreak
setlocal linebreak
setlocal nolisp
setlocal lispwords=
set list
setlocal list
setlocal makeprg=
setlocal matchpairs=(:),{:},[:],<:>
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=syntaxcomplete#Complete
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
set relativenumber
setlocal relativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal scrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal smartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=.tex
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'plaintex'
setlocal syntax=plaintex
endif
setlocal tabstop=4
setlocal tags=~/Dokumente/Linux/QRCs/.git/plaintex.tags,~/Dokumente/Linux/QRCs/.git/tags,./tags,./TAGS,tags,TAGS
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal nowrap
setlocal wrapmargin=0
let s:l = 279 - ((9 * winheight(0) + 9) / 18)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
279
normal! 0
wincmd w
exe 'vert 1resize ' . ((&columns * 84 + 84) / 168)
exe 'vert 2resize ' . ((&columns * 83 + 84) / 168)
tabnext 1
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=30 winwidth=55 shortmess=filnxToOatI
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
