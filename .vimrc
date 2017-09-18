" ^_^ Dacheng Gao's <realgaodacheng@gmail.com>
"  - update 2017-09-16
"  - much thanks to the Vim creator and many more others

" Reset vimrc {{{
set nocompatible
runtime! plugin/sensible.vim
" }}}

" Colors {{{
syntax enable           " enable syntax processing
set background=dark
colorscheme PaperColor
hi LineNr ctermbg=16
hi LineNr ctermfg=243
hi CursorLineNr ctermbg=16
hi CursorLineNr ctermfg=202
hi NonText ctermfg=239
hi SpecialKey ctermfg=239
" }}}

" Misc {{{
set backspace=indent,eol,start
set updatetime=5000
set timeout timeoutlen=1000 ttimeout ttimeoutlen=20
" }}}

" Spaces & Tabs {{{
set tabstop=4           " 4 space tab
set expandtab           " use spaces for tabs
set softtabstop=4       " 4 space tab
set shiftwidth=4
set modelines=1
filetype indent on
filetype plugin on
set autoindent
set smarttab
set smartindent
" }}}

" UI Layout {{{
set number              " show line numbers
set showcmd             " show command in bottom bar
set smartcase
set cursorline        " highlight current line
set ruler
set wildmenu
set lazyredraw
set showmatch           " higlight matching parenthesis
set fillchars+=vert:┃
set scrolloff=1
set laststatus=2
set showtabline=2
set list
set listchars=eol:¬,tab:\ \ ,trail:~,extends:>,precedes:<
if (version >= 703)
    set colorcolumn=80 " 在80列出显示标记
endif
if (version >= 600)
    set foldcolumn=0
endif
set modeline
" }}}

" Searching {{{
set ignorecase          " ignore case when searching
set incsearch           " search as characters are entered
set hlsearch            " highlight all matches
" }}}

" Folding {{{
"=== folding ===
set foldmethod=indent   " fold based on indent level
set foldnestmax=10      " max 10 depth
set foldenable          " don't fold files by default on open
nnoremap <space> za
set foldlevelstart=10   " start with fold level of 1
set wildignore+=*/.git/*,*/.svn/*,*/.hg/*
" }}}

" Window Shortcuts {{{
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
" }}}

" Line Shortcuts {{{
nnoremap j gj
nnoremap k gk
nnoremap gV `[v`]
" }}}

" Leader Shortcuts {{{
inoremap jk <ESC>
let mapleader=","
nnoremap <leader>q :q<CR>
nnoremap <leader>b :buffer
nnoremap <leader>bl :buffers<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader><C-p> :bprev<CR>
nnoremap <leader><C-n> :bnext<CR>
nnoremap <leader>m :silent make\|redraw!\|cw<CR>
nnoremap <leader>n :NERDTreeToggle .<CR>
nnoremap <leader>h :A<CR>
nnoremap <leader>ev :vsp $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>
nnoremap <leader>l :call ToggleNumber()<CR>
nnoremap <leader><space> :noh<CR>
nnoremap <leader>s :mksession<CR>
nnoremap <leader>a :Ag
nnoremap <leader>1 :set number!<CR>
nnoremap <leader>d :Make!
nnoremap <leader>r :TestFile<CR>
nnoremap <leader>g :call RunGoFile()<CR>
vnoremap <leader>y "+y
" }}}

" AutoGroups {{{
augroup configgroup
    autocmd!
    autocmd VimEnter * highlight clear SignColumn
    autocmd BufWritePre *.vimrc,*.sh,*.php,*.py,*.js,*.txt,*.hs,*.java,*.md,*.rb :call <SID>StripTrailingWhitespaces()
    autocmd BufEnter *.cls setlocal filetype=java
    autocmd BufEnter *.zsh-theme setlocal filetype=zsh
    autocmd BufEnter Makefile setlocal noexpandtab
    autocmd BufEnter *.sh setlocal tabstop=2
    autocmd BufEnter *.sh setlocal shiftwidth=2
    autocmd BufEnter *.sh setlocal softtabstop=2
    autocmd BufEnter *.py setlocal tabstop=4
    autocmd BufEnter *.md setlocal ft=markdown
augroup END
" }}}

" Backups {{{
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup
" }}}


" Vim Plug {{{
" - Specify a directory for plugins
" - avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" sensible.vim: Defaults everyone can agree on
Plug 'tpope/vim-sensible'

" A tree explorer plugin for vim.
Plug 'scrooloose/nerdtree'

" intensely orgasmic commenting
Plug 'scrooloose/nerdcommenter'

" Up-to-date PHP syntax file (5.3 – 7.1 support)
Plug 'stanangeloff/php.vim'

" Improved PHP omnicompletion
Plug 'shawncplus/phpcomplete.vim'

" The official VIm indent script for PHP
Plug '2072/php-indenting-for-vim'

" Use FriendsOfPHP/PHP-CS-Fixer
Plug 'stephpy/vim-php-cs-fixer'

" Syntax checking hacks for vim
Plug 'vim-syntastic/syntastic'

" Automatically save changes to disk
Plug '907th/vim-auto-save'

" Fuzzy file, buffer, mru, tag, etc finder.
Plug 'ctrlpvim/ctrlp.vim'

" A Vim wrapper for running tests on different granularities.
Plug 'janko-m/vim-test'

" abolish.vim: easily search for, substitute, and abbreviate multiple variants of a word
Plug 'tpope/vim-abolish'

"Plug 'wincent/command-t'

" fugitive.vim: a Git wrapper so awesome, it should be illegal
Plug 'tpope/vim-fugitive'

" lean & mean status/tabline for vim that's light as air
Plug 'vim-airline/vim-airline'

" A collection of themes for vim-airline
Plug 'vim-airline/vim-airline-themes'

" visually displaying indent levels in code
Plug 'nathanaelkane/vim-indent-guides'

" code-completion engine
Plug 'Valloric/YouCompleteMe'

" Go development plugin
Plug 'fatih/vim-go'

" Provide easy code formatting in Vim by integrating existing code formatters.
Plug 'Chiel92/vim-autoformat'

"Plug 'Raimondi/delimitMate'

Plug 'jiangmiao/auto-pairs'

" Initialize plugin system
call plug#end()
" }}}

" Chiel92/vim-autoformat {{{
noremap <silent> <leader>f :Autoformat<CR>
" }}}

" NERDTree {{{
let g:NERDTreeWinSize=32
" }}}

" vim-test {{{
"nnoremap <silent> <leader>t :TestNearest<CR>
"nnoremap <silent> <leader>T :TestFile<CR>
"nnoremap <silent> <leader>a :TestSuite<CR>
"nnoremap <silent> <leader>l :TestLast<CR>
"nnoremap <silent> <leader>g :TestVisit<CR>
" }}}

" vim-indent-guides {{{
let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_guide_size=1
let g:indent_guides_color_change_percent=10
let g:indent_guides_start_level=2
let g:indent_guides_space_guides=1
let g:indent_guides_tab_guides=1
let g:indent_guides_exclude_filetypes=['sh', 'help', 'nerdtree']
let g:indent_guides_default_mapping=1
" }}}

" CtrlP {{{
let g:ctrlp_map='<c-p>'
let g:ctrlp_cmd='CtrlP'
let g:ctrlp_by_filename=0 " use <c-d> to toggle on/off
let g:ctrlp_regexp=0 " use <c-r> to toggle on/off
let g:ctrlp_match_window='bottom,order:ttb'
let g:ctrlp_switch_buffer=0
let g:ctrlp_tabpane_position='ac' " after current tab
let g:ctrlp_working_path_mode=0
let g:ctrlp_use_caching=1
let g:ctrlp_cache_dir=$HOME.'/.cache/ctrlp'
let g:ctrlp_custom_ignore='\vbuild/|dist/|venv/|target/|\.(o|swp|pyc|egg)$'
let g:ctrlp_show_hidden=1
" }}}

" airline {{{
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#left_sep=' '
let g:airline#extensions#tabline#left_alt_sep='|'
let g:airline_powerline_fonts=1
let g:airline_symbols_ascii=1
let g:airline_theme='onedark'
let g:airline_left_sep=''
let g:airline_left_alt_sep=''
let g:airline_right_sep=''
let g:airline_right_alt_sep=''
let g:airline_detect_modified=1
let g:airline_detect_paste=1
let g:airline_detect_crypt=1
let g:airline_detect_spell=1
let g:airline_detect_iminsert=0
let g:airline_inactive_collapse=1
let g:airline_skip_empty_sections=1
" }}}

" syntastic {{{
let g:syntastic_php_checkers=['php', 'phpcs', 'phpmd']
let g:syntastic_php_phpcs_args="--standard=psr2 -n --report=csv"
let g:syntastic_always_populate_loc_list=1
let g:syntastic_loc_list_height=5 " default 10
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=0
let g:syntastic_auto_jump=0
let g:syntastic_auto_loc_list=1
let g:syntastic_shell="/bin/sh"
" }}}

" vim-php-cs-fixer {{{
" If php-cs-fixer is in $PATH, you don't need to define line below
"let g:php_cs_fixer_path='~/php-cs-fixer.phar' " define the path to the php-cs-fixer.phar
"
" If you use php-cs-fixer version 1.x
"let g:php_cs_fixer_level='symfony'                   " options: --level (default:symfony)
"let g:php_cs_fixer_config='default'                  " options: --config
" If you want to define specific fixers:
"let g:php_cs_fixer_fixers_list='linefeed,short_tag' " options: --fixers
"let g:php_cs_fixer_config_file='.php_cs'            " options: --config-file
"  " End of php-cs-fixer version 1 config params
"
" If you use php-cs-fixer version 2.x
let g:php_cs_fixer_rules='@PSR2'          " options: --rules (default:@PSR2)
"let g:php_cs_fixer_cache='.php_cs.cache' " options: --cache-file
"let g:php_cs_fixer_config_file='.php_cs' " options: --config
" End of php-cs-fixer version 2 config params
"
let g:php_cs_fixer_php_path='php'               " Path to PHP
let g:php_cs_fixer_enable_default_mapping=0     " Enable the mapping by default (<leader>pcd)
let g:php_cs_fixer_dry_run=0                    " Call command with dry-run option
let g:php_cs_fixer_verbose=0                    " Return the output of command if 1, else an inline information.
"autocmd BufWrite *.php :call PhpCsFixerFixFile()<CR> " run automatically
nnoremap <silent> <leader>p :call PhpCsFixerFixFile()<CR><CR>
" }}}

" vim-auto-save {{{
let g:auto_save=1
let g:auto_save_silent=0
let g:auto_save_events=['CursorHoldI', 'InsertLeave']
let g:auto_save_no_updatetime=1
let g:auto_save_in_insert_mode=1
let g:auto_save_presave_hook=''
" }}}

" stanangeloff/php.vim {{{
function! PhpSyntaxOverride()
    hi! def link phpDocTags  phpDefine
    hi! def link phpDocParam phpType
endfunction
augroup phpSyntaxOverride
    autocmd!
    autocmd FileType php call PhpSyntaxOverride()
augroup END
" }}}


" Custom Functions {{{
function! ToggleNumber()
    if(&relativenumber == 1)
        set norelativenumber
        set number
    else
        set relativenumber
    endif
endfunc

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
" }}}


" last exit cursor position {{{
" When editing a file, always jump to the last known cursor position.
" Don't do it when the position is invalid or when inside an event handler
" (happens when dropping a file on gvim).
" Also don't do it when the mark is in the first line, that is the default
" position when opening a file.
if has("autocmd")
    autocmd BufReadPost *
                \ if line("'\"") > 1 && line("'\"") <= line("$") |
                \   exe "normal! g`\"" |
                \ endif
endif
" }}}

" vim:foldmethod=marker:foldlevel=0
