"--------------------------------
"vimrc
"---------------------------------

colorscheme badwolf 
"colorscheme koehler
" consider using badwolf, solarized, or molokai

filetype plugin on " enable plugins
syntax enable " enable syntax processing

" spaces and tabs
set tabstop=4     " number of visual spaces per tab
set softtabstop=4  " number of spaces in tab when editing
set shiftwidth=4
set expandtab " make tabs spaces

" visuals
set number    " shows line numbers
set showcmd   " show command in bottom bar
set cursorline " highlight current line
filetype indent on    " load filetype-specific indent files
set wildmenu   " visual autocomplete for command window
set lazyredraw " redraw only when we need to - faster macros
set showmatch  " highlight matching parentheses and brackets

" searching
set incsearch " search as characters are entered
set hlsearch  " highlight matches
" shortcut to turn off highlights from search results (only enter comma
" followed by space)
nnoremap ,<space> :nohlsearch<CR>

" folding (za toggles fold at current block)
set foldenable " enable folding (ie plus/minus signs by function to show/hide)
set foldlevelstart=10   "open most folds by default
set foldnestmax=10      " 10 nexted fold max
set foldmethod=manual   " fold manually (zf creates fold)

" movement
" move vertically by visual line - even when lines wrap
nnoremap j gj
nnoremap k gk
" move to beginning/end of line
nnoremap B ^
nnoremap E $
" $ and ^ don't do anything
nnoremap $ <nop>
nnoremap ^ <nop>
" highlight last inserted text
nnoremap gV '[v']

" leader shortcuts
let mapleader=","  " leader is comma
" jk is escape
inoremap jk <esc>
"toggle gundo - 'super undo' - TODO: debug
nnoremap <leader>u :GundoToggle<CR>
" edit vimrc/zshrc and load vim bindings
" TODO : do these later
" super save session (keep windows as is for next session)
nnoremap <leader>s :mksession<CR>
" shortcut for nerdtree
nnoremap <leader>nt :NERDTreeToggle<CR>
" execute pathogen at runtime (plugin manager)
execute pathogen#infect()

" move between windows
" switch to new window
nnoremap <leader>w <C-W>w
" switch to new window in some direction
nnoremap <leader>h <C-W>h
nnoremap <leader>j <C-W>j
nnoremap <leader>k <C-W>k
nnoremap <leader>l <C-W>l
" resize windows
" horzontally resize
nnoremap = <C-W>+
nnoremap - <C-W>-
"vertically resize
nnoremap <C-m> <C-W>>
nnoremap <C-n> <C-W><
" maximize window size for horizontal split
nnoremap <leader>= <C-W>_
" maximize window size for vertical split
nnoremap <leader><Bar> <C-W><Bar>

" quickly pull up vimrc and load vimrc
nnoremap <leader>ev :vsp $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>

" insert mode shortcuts
inoremap \<CR> <CR><CR><C-o>k<Tab>

" function to change statusline 
function! InsertStatuslineColor(mode)
    if a:mode == 'i'
        hi statusline guibg=Cyan ctermfg=6 guifg=Black ctermbg=0
    elseif a:mode == 'r'
        hi statusline guibg=Purple ctermfg=5 guifg=Black ctermbg=0
    else
        hi statusline guibg=DarkRed ctermfg=1 guifg=Black ctermbg=0
    endif
endfunction

"function calls
au InsertEnter * call InsertStatuslineColor(v:insertmode)
au InsertLeave * hi statusline guibg=DarkGrey ctermfg=8 guifg=White ctermbg=15

" set default background color 
hi statusline guibg=DarkGrey ctermfg=8 guifg=White ctermbg=15


"" Settings for vim-closetag
" filenames like *.xml, *.html, *.xhtml, ...
" Then after you press <kbd>&gt;</kbd> in these files, this plugin will try to close the current tag.
"
let g:closetag_filenames = '*.html,*.xhtml,*.phtml, *.vue'

" filenames like *.xml, *.xhtml, ...
" This will make the list of non closing tags self closing in the specified files.
"
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'

" integer value [0|1]
" This will make the list of non closing tags case sensitive (e.g. `<Link>` will be closed while `<link>` won't.)
"
let g:closetag_emptyTags_caseSensitive = 1

" Shortcut for closing tags, default is '>'
"
let g:closetag_shortcut = '>'

" Add > at current position without closing the current tag, default is '<leader>>'
"
let g:closetag_close_shortcut = '<leader>>'


"autocommand to fix syntax highlighting
autocmd BufEnter * :syntax sync fromstart
" autogroups - not sure" what this does so tis commented out
"" TODO: make autocommands to write a header
"augroup configgroup
"    autocmd!
"    autocmd VimEnter * highlight clear SignColumn
"    autocmd BufWritePre *.php,*.py,*.js,*.txt,*.hs,*.java,*.md
"                \:call <SID>StripTrailingWhitespaces()
"    autocmd FileType java setlocal noexpandtab
"    autocmd FileType java setlocal list
"    autocmd FileType java setlocal listchars=tab:+\ ,eol:-
"    autocmd FileType java setlocal formatprg=par\ -w80\ -T4
"    autocmd FileType php setlocal expandtab
"    autocmd FileType php setlocal list
"    autocmd FileType php setlocal listchars=tab:+\ ,eol:-
"    autocmd FileType php setlocal formatprg=par\ -w80\ -T4
"    autocmd FileType ruby setlocal tabstop=2
"    autocmd FileType ruby setlocal shiftwidth=2
"    autocmd FileType ruby setlocal softtabstop=2
"    autocmd FileType ruby setlocal commentstring=#\ %s
"    autocmd FileType python setlocal commentstring=#\ %s
"    autocmd BufEnter *.cls setlocal filetype=java
"    autocmd BufEnter *.zsh-theme setlocal filetype=zsh
"    autocmd BufEnter Makefile setlocal noexpandtab
"    autocmd BufEnter *.sh setlocal tabstop=2
"    autocmd BufEnter *.sh setlocal shiftwidth=2
"    autocmd BufEnter *.sh setlocal softtabstop=2
"augroup END
