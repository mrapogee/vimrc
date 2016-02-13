set nocompatible              " be iMproved, required
filetype off                  " required

let g:python_host_prog = '/usr/local/bin/python'
let g:python3_host_prog = '/usr/local/bin/python3'

" Plugins {{{
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" INSERT PLUGINS HERE
Plugin 'tpope/vim-surround'
Plugin 'rking/ag.vim'
Plugin 'dkprice/vim-easygrep'
Plugin 'Raimondi/delimitMate'
Plugin 'easymotion/vim-easymotion'
Plugin 'lervag/vim-latex'
Plugin 'wavded/vim-stylus'

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Vim multiple corsors
Plugin 'terryma/vim-multiple-cursors'

" Vim javascript
Plugin 'pangloss/vim-javascript'

" Vim coffee for cofee script sytax highlighting,
Plugin 'kchmck/vim-coffee-script'

" Bad Wolf color scheme
Plugin 'sjl/badwolf'

" Mundo (maintaned fork of gundo) for undo tree
Plugin 'simnalamburt/vim-mundo'

" Control P for fuzzy search
Plugin 'kien/ctrlp.vim'

" Powerline for status bar
Plugin 'Lokaltog/vim-powerline'

" Nerd tree for file tree
Plugin 'scrooloose/nerdtree'

" Node vim for better Node.js editing
Plugin 'moll/vim-node'

" Angular vim for better angular editing
Plugin 'burnettk/vim-angular'

" Jade vim for jade syntax highlighting
Plugin 'digitaltoad/vim-jade'

" easier comments
Plugin 'tpope/vim-commentary'

" syntax checker
Plugin 'scrooloose/syntastic'

" css3 syntax
Plugin 'lepture/vim-css'

" distungushed theme
Plugin 'Lokaltog/vim-distinguished'

" expand vim's repeat functionality to plugins
Plugin 'tpope/vim-repeat'

" quESCickly align block's
Plugin 'junegunn/vim-easy-align'

" Select indent blocks
Plugin 'michaeljsmith/vim-indent-object'

" Better multicursor alternative
Plugin 'paradigm/vim-multicursor'

" Better autocomletion for node and js
Plugin 'marijnh/tern_for_vim'

" JSX/Babel support
Plugin 'mxw/vim-jsx'

" All of your PlugESCins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" }}}
" Colors {{{
syntax enable " enable syntax processing
colors distinguished
" }}}
" Misc {{{
set ttyfast " faster redraw
set backspace=indent,eol,start
set hidden
set so=40
set viewoptions-=options
set title "Make term emus inherit the vim file title
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview
let g:jsx_ext_required = 0 " Allow JSX in normal JS files
let g:syntastic_javascript_checkers = ['eslint']
autocmd FileType c nnoremap <buffer> <silent> <C-]> :YcmCompleter GoTo<cr>
autocmd BufWritePre * :%s/\s\+$//e
" This should only be enabled when connecting from ssh

" }}}
" Spaces & Tabs {{{
set expandtab " use spaces for tabs
set tabstop=2 " 4 space tab
set softtabstop=2 " 4 space tab
set shiftwidth=2
set modelines=1
filetype indent on
filetype plugin on
set autoindent
" }}}
" UI Layout {{{
set number " show line numbers
set showcmd " show command in bottom bar
set nocursorline " highlight current line
set wildmenu
"set lazyredraw
set showmatch " higlight matching parenthesis
nnoremap <Leader>j <C-W><C-J>
nnoremap <Leader>k <C-W><C-K>
nnoremap <Leader>h <C-W><C-H>
nnoremap <Leader>l <C-W><C-L>
" }}}
" Searching {{{
set ignorecase " ignore case when searching
set incsearch " search as characters are entered
set hlsearch " highlight all matches
" }}}
" Folding {{{
"=== folding ===
set foldmethod=indent " fold based on indent level
set foldnestmax=10 " max 10 depth
set foldenable " don't fold files by default on open
nnoremap <space> za
set foldlevelstart=10 " start with fold level of 1
autocmd BufNewFile,BufReadPost *.coffee setl foldmethod=indent " fold coffee files
" }}}
" Line Shortcuts {{{
inoremap <S-F5> <ESC>d0i<BS>
map <S-F5> d0i<BS><ESC>
map <Enter> o<SPACE><BS><ESC>
map <S-Enter> O<ESC>
nnoremap gV `[v`]
onoremap an :<c-u>call <SID>NextTextObject('a', 'f')<cr>
xnoremap an :<c-u>call <SID>NextTextObject('a', 'f')<cr>
onoremap in :<c-u>call <SID>NextTextObject('i', 'f')<cr>
xnoremap in :<c-u>call <SID>NextTextObject('i', 'f')<cr>
onoremap al :<c-u>call <SID>NextTextObject('a', 'F')<cr>
xnoremap al :<c-u>call <SID>NextTextObject('a', 'F')<cr>
onoremap il :<c-u>call <SID>NextTextObject('i', 'F')<cr>
xnoremap il :<c-u>call <SID>NextTextObject('i', 'F')<cr>
" }}}
" Leader Shortcuts {{{
let mapleader=","
nnoremap <leader>m :silent make\|redraw!\|cw<CR>
nnoremap <leader>u :GundoToggle<CR>
nnoremap <leader>ev :vsp $MYVIMRC<CR>
nnoremap <leader>ez :vsp ~/.zshrc<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>:e nothing<CR>:e $MYVIMRC<CR>
nnoremap <leader><space> :noh<CR>
nnoremap <leader>c :SyntasticCheck<CR>:Errors<CR>
nnoremap <leader>1 :set number!<CR>
nnoremap <leader>d :Make!
nnoremap <leader>g :call RunGoFESCile()<CR>
vnoremap <leader>y "+y
nnoremap <leader>p "+p
nnoremap <leader>t :e #<CR>
nnoremap <leader>n :NERDTreeToggle<CR>
nnoremap <Leader>w :w<CR>
nnoremap <Leader>x :x<CR>
nnoremap <Leader>t :CtrlP<CR>
vmap <Leader>w <Esc>:w<CR>
nnoremap f <Plug>(easymotion-s2)
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)
inoremap jk <esc>
inoremap ja <esc>A
vmap <C-c> <esc>
vmap <Enter> <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

" }}}
" Powerline {{{
"set encoding=utf-8
"python from powerline.vim import setup as powerline_setup
"python powerline_setup()
"python del powerline_setup
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
set laststatus=2
" }}}
" CtrlP {{{
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_custom_ignore = '\vbuild/|dist/|node_modules/|bower_components/|venv/|target/|\.(o|swp|pyc|egg)$'
" }}}
" NERDTree {{{
let NERDTreeIgnore = ['\.pyc$', 'build', 'venv', 'egg', 'egg-info/', 'dist', 'docs']
map <leader>a :NERDTreeToggle<CR>

" }}}
" Tmux {{{
"if exists('$TMUX') " allows cursor change in tmux mode
" let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
" let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
"else
" let &t_SI = "\<Esc>]50;CursorShape=1\x7"
" let &t_EI = "\<Esc>]50;CursorShape=0\x7"
"endif
"" }}}
" AutoGroups {{{
augroup configgroup
    autocmd!
    autocmd VimEnter * highlight clear SignColumn
    autocmd BufWritePre *.php,*.py,*.js,*.txt,*.hs,*.java,*.md,*.rb :call <SID>StripTrailingWhitespaces()
    autocmd BufEnter *.cls setlocal filetype=java
    autocmd BufEnter *.zsh-theme setlocal filetype=zsh
    autocmd BufEnter Makefile setlocal noexpandtab
    autocmd BufEnter *.sh setlocal tabstop=2
    autocmd BufEnter *.sh setlocal shiftwidth=2
    autocmd BufEnter *.sh setlocal softtabstop=2
augroup END
" }}}
" Backups {{{
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup

set undodir=~/.vim/undo
set undofile
" }}}
" Custom Functions {{{
"
let g:S = 0  "result in global variable S
function! Sum(number)
  let g:S = g:S + a:number
  return a:number
endfunction

function! ToggleNumber()
    if(&relativenumber == 1)
        set norelativenumber
        set number
    else
        set relativenumber
    endif
endfunc
function! RunTestFile()
    if(&ft=='python')
        exec ":!" . ". venv/bin/activate; nosetests " .bufname('%') . " --stop"
    endif
endfunction
function! RunGoFile()
    if(&ft=='go')
        exec ":new|0read ! go run " . bufname('%')
    endif
endfunction
function! RunTestsInFile()
    if(&ft=='php')
        :execute "!" . "/Users/dblack/pear/bin/phpunit -d memory_limit=512M -c /usr/local/twilio/src/php/tests/config.xml --bootstrap /usr/local/twilio/src/php/tests/bootstrap.php "
        . bufname('%') . ' \| grep -v Configuration \| egrep -v "^$" '
    elseif(&ft=='go')
        exec ":!gp test"
    elseif(&ft=='python')
        exec ":read !" . ". venv/bin/activate; nosetests " . bufname('%') . " --nocapture"
    endif
endfunction
" strips trailing whitespace at the end of files. this
" is called on buffer write in the autogroup above.
function! <SID>StripTrailingWhitespaces()
    " save last search & cursor position
    let _s=@/
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    let @/=_s
    call cursor(l, c)
endfunction
function! <SID>CleanFile()
    " Preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    " Do the business:
    %!git stripspace
    " Clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction
function! s:NextTextObject(motion, dir)
    let c = nr2char(getchar())
    if c ==# "b"
        let c = "("
    elseif c ==# "B"
        let c = "{"
    elseif c ==# "r"
        let c = "["
    endif
    exe "normal! ".a:dir.c."v".a:motion.c
endfunction
" }}}
" Muliple Cursors {{{
let g:multi_cursor_exit_from_visual_mode=0
let g:multi_cursor_exit_from_insert_mode=0
" }}}
" EasyMotion {{{
map s <Plug>(easymotion-s)
let g:EasyMotion_skipfoldedline = 0
" }}}

" vim:foldmethod=marker:foldlevel=0
