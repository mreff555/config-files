" vim config by Dan Feerst
"
" Syntax and color scheme
if $TERM == "xterm-256color"
    set t_Co=256
endif
syntax on
colorscheme ron

" Set tab stops to two spaces
filetype plugin indent on
set tabstop=2
set shiftwidth=2
set expandtab

" Line numbering on
set nu

"Plugins

" Key Mapping
"
" map types
" map   = normal and visual modes
" map!  = insert and command line modes
" nmap  = normal mode only
" vmal  = visual mode and select mode
" imap  = insert mode only
" cmap  = command line mode only
" smap  = select mode only
" xmap  = visual mode only
" omap  = operator pending mode maps only
" lmap  =

" Highlights the area between braces when switching between them with '%'
noremap % v%

" Enable the delete key in normal and interactive modes by
" mapping keys to 'x'
nmap ^? x
imap ^? ^[lxi

" Fix the backspace key when trying to pattern match
cmap ^? ^[[3~
imap ^? ^H

" Clear syntax highlighting with space bar (normal mode only)
nmap <Space> :noh

" Sets the working directory based on the current file
command Pwd cd %:p:h

"Allows for fast searching
command -nargs=1 Locate :!locate -d $HOME/.mlocate/mlocate-db -ir '<args>'
