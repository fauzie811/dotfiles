call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'

Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-sensible'
Plug 'editorconfig/editorconfig-vim'
"Plug 'ctrlpvim/ctrlp.vim'
Plug 'junegunn/fzf'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'
"Plug 'Yggdroot/indentLine'

Plug 'arrufat/vala.vim'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'dart-lang/dart-vim-plugin'

Plug 'valloric/MatchTagAlways'

Plug 'w0rp/ale'

"Plug 'ayu-theme/ayu-vim'
"Plug 'hzchirs/vim-material'
Plug 'kristijanhusak/vim-hybrid-material'

Plug 'kana/vim-fakeclip'

call plug#end()

syntax enable
set termguicolors
let ayucolor="dark"
colorscheme hybrid_material
set background=dark
set t_Co=256

set showmatch
set number
set hidden
set numberwidth=5
set timeoutlen=1000 ttimeoutlen=0
set laststatus=2
set cursorline
set colorcolumn=80
set nofoldenable
set tabstop=4 shiftwidth=4 softtabstop=4 expandtab

nnoremap <C-p> :FZF<CR>

let NERDTreeMinimalUI = 1
let NERDTreeAutoDeleteBuffer = 1
"let g:NERDTreeDirArrowExpandable = '+'
"let g:NERDTreeDirArrowCollapsible = '-'

"let g:indentLine_char = ''
"let g:indentLine_first_char = ''
let g:indentLine_showFirstIndentLevel = 1
let g:indentLine_setColors = 0
let g:enable_bold_font = 1
let g:enable_italic_font = 1

let g:ctrlp_custom_ignore = '\v[\/](node_modules|build|target|dist)|(\.(swp|ico|git|svn))$'
"let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
"let g:ctrlp_custom_ignore = '\v[\/]\.(DS_Storegit|hg|svn|optimized|compiled|node_modules)$'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme = 'hybrid'

let g:jsx_ext_required = 0
let g:mta_filetypes = {
\  'javascript.jsx' : 1,
\}

let dart_html_in_string=v:true
let dart_style_guide = 2

let g:ale_sign_error = '●' " Less aggressive than the default '>>'
let g:ale_sign_warning = '.'
let g:ale_lint_on_enter = 0 " Less distracting when opening a new file
let g:ale_linters = {
\  'javascript': ['standard'],
\  'php': ['php', 'phpcs'],
\}

"remove trailing whitespaces on save
autocmd BufWritePre * %s/\s\+$//e

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

" Use ctrl-[hjkl] to select the active split!
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>

map <C-n> :NERDTreeToggle<CR>

