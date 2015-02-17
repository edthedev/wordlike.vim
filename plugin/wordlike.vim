" What this Vimrc is for.
"    These settings make Vim behave just a tiny bit more
"    like Microsoft Word.
"
"    If I'm being comletely honest, this is mostly 
"    just a way to keep these settings out of my 
"    main Vimrc. 
"
"    So that my main Vimrc can contain nothing
"    but Vundle plugins (including this one).

" How this Vimrc is organized
" The headings below are from the output of the Options command.
" :options
"
" http://dougireton.com/blog/2013/02/23/layout-your-vimrc-like-a-boss/

" =======================================================
"  1 important
" =======================================================

" Let the leader key be ,  
" let mapleader=","

" =======================================================
"  2 moving around, searching and patterns
" =======================================================

set ignorecase " Case insensitive search
set incsearch "Search as I type

" =======================================================
"  3 tags
" =======================================================
"
" Generate the .tags file.
" map <Leader>gt :!ctags --file-scope=no --python-kinds=-iv -R -f .tags .
" set tags=.tags;/

" =======================================================
"  4 displaying text
" =======================================================
set vb t_vb= "Flash instead of beep.
" Draw a nice line under the current line.
hi CursorLine guibg=#2d2d2d

" No SpellCheck by default.
set nospell
set ruler
set scrolloff=8      " Number of lines from vertical edge to start scrolling
" set sidescrolloff=15 " Number of cols from horizontal edge to start scrolling
" set sidescroll=1       " Number of cols to scroll at a time

set cursorline " Underline the line that the curson is on
hi CursorLine guibg=#2d2d2d

set ruler
" set textwidth=8000
set vb t_vb= "Flash instead of beep.

" Do not show line numbers
set nonumber

" Do not add line breaks into newly entered text.
set wrapmargin=0
set textwidth=0

" =======================================================
"  5 syntax, highlighting and spelling
" =======================================================
syntax enable 

" =======================================================
"  6 multiple windows
" =======================================================

" Allow switching buffers without closing files.
set hidden

" Show open buffers
" :map <Leader>b :buffers<Cr>

" Reminders:
"   :bn, :bc
"   :b <partial match for the buffer you want>
"   :badd <new file to open>

" =======================================================
"  7 multiple tab pages
" =======================================================
" =======================================================
"  8 terminal
" =======================================================
" =======================================================
"  9 using the mouse
" =======================================================
" =======================================================
" 10 printing
" =======================================================

" Print in black and white. SRSLY.
" map <C-p> :color print_bw<CR>:hardcopy<CR>:color darkeclipse<CR>:syn on<CR>

" =======================================================
" 11 messages and info
" =======================================================


" =======================================================
" 12 selecting text
" =======================================================

" Re-select visual block after indent/outdent.
vnoremap < <gv
vnoremap > >gv

" =======================================================
" 13 editing text
" =======================================================
"
"
"Wiki Noformat tag.
ab nof {noformat}

"don't wrap in the default, utterly stupid way.
set lbr 

" Make backspace work like most other apps.
set backspace=indent,eol,start

"Parenthesis matching.
set showmatch 

" Gvim's default for paste is too many kepresses.
nmap <C-V> "+gP
imap <C-V> <ESC><C-V>i

" May as well support Ctrl+C as long as we're making changes.
vmap <C-C> "+y 

" =======================================================
" 14 tabs and indenting
" =======================================================
" Indentation is great.
set smartindent
" filetype indent on
filetype plugin indent on


" =======================================================
" 15 folding
" =======================================================
" =======================================================
" 16 diff mode
" =======================================================
" =======================================================
" 17 mapping
" =======================================================

" Tired of typing :Wq
cnoreabbrev W w

" =======================================================
" 18 reading and writing files
" =======================================================
" =======================================================
" 19 the swap file
" =======================================================
"   Do not leave backups in random locations. 
set backupdir=./.backup,/tmp
set directory=./.backup,/tmp

" =======================================================
" 20 command line editing
" =======================================================
" =======================================================
" 21 executing external commands
" =======================================================

" ex mode commands made easy
" nnoremap ; :

" :map <Leader>pc :!check-script %:p:h/%<Cr>
":map <Leader>pc :!hg ci%<Cr>
":map <Leader>pe :!tail /var/log/apache2/error.log
":map <Leader>ph :!check-script --html %<Cr>
":map <Leader>pm :!listmethods %<Cr>
" :map <Leader>pl :!pylib 

" Convert to HTML
" map <leader>ch :!make html 

" Convert to PDF
" map <leader>cp :!rst2pdf % > %:r.pdf;evince %:r.pdf &<Cr>

" Scratch Buffer
"map <F7> :badd %:r-scratch.%:e
" Slides! 
" map <leader>cs :!rst2slides % %:r.html;firefox %:r.html &<Cr>
" View Slides! 
" map <leader> :!firefox %:r.html &<Cr>

" Find word under cursor in entire project.
" map <Leader>f :!grep <C-r><C-w> . -R -A1 -B1 -n <bar> grep -v .svn <bar> vim -R -
map <Leader>f :!grep <C-r><C-w> . -R -A1 -B1 -n <bar> grep -v .svn <bar> grep -v tests <bar> vim -R -

" Diff current buffer vs saved file.
" map <Leader>d :w !diff % -<Cr>

" Run!
" map <F10> :!%

" map <F11> :!touch %:r.scratch.%:t <bar> :badd %:r.scratch.%:t<Cr>
" map <Leader>os :badd %:r.scratch.%:t<Cr>

" :map <Leader>pr :!sudo /etc/init.d/apache2 restart<Cr>

" Sort lines!!
" :map <Leader>ss :'<,'> !sort<Cr>

" -----------------------------------------------------------------
"    Wiki link stuff
" -----------------------------------------------------------------
" map <Leader>ll :e <cfile><cr>
" map <Leader>lw :e $HOME/Dropbox/notes<cr>
" map <Leader>lh :e $HOME/Dropbox/notes<cr>
" map <Leader>lb :buffers<Cr>
"map ,lj :bp<Cr>
"map ,lk :bn<Cr>

"      Send stuff to Wordpress
" -----------------------------------------------------------------
" map <Leader>tw :!$HOME/.vim/bundle/vim-rst/bin/text-send-to-wordpress %<Cr>

" map <leader>w :!nautilus ~/Dropbox/notes/wiki >/dev/null 2>&1<Cr>
" map <leader>ow :!ranger ~/Dropbox/notes/wiki<Cr>
" map <leader>oh :!firefox http://vifm.sourceforge.net/docs.html &<Cr>
" map <leader>oh :!firefox http://vifm.sourceforge.net/docs.html &<Cr>
" map <leader>ob :!ranger .<Cr>

" Copy entire document to clipboard.
" map <leader>xc :!cat % <bar> xclip -sel c

" Shared Clipboard
set clipboard=unnamed

" =======================================================
" 22 running make and jumping to errors
" =======================================================
" =======================================================
" 23 language specific
" =======================================================
" =======================================================
" 24 multi-byte characters
" =======================================================
" =======================================================
" 25 various
" =======================================================

" =======================================================
"   Common Coding Commands
" =======================================================
" Keep the code PEP8 compliant.
" map <F2> :!pylint %:r.py > /tmp/pylint.txt <bar> :e /tmp/pylint.txt 
" map <F2> :e /tmp/pylint.txt <bar> :read !pylint %:r.py 

" Some generally useful settings
" -----------------------------------------------------------------------

hi Comment ctermfg=cyan

" Righ-click in Gvim should pop up for copy
set mousemodel=popup


" By default, all text is ReStructuredText
" au BufNewFile,BufRead *.txt set filetype=rest
"
" " Recognize Markdown
" au BufNewFile,BufRead *.md set filetype=markdown
" au BufNewFile,BufRead *.mkd set filetype=markdown
" " Use ReStructuredText highlighting for all text files.
filetype on
syntax on
" set syntax=rst
" au BufNewFile,BufRead *.txt set syntax=rst
" au BufNewFile,BufRead *.txt set filetype=rst
