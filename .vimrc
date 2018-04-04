call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'

"Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-sleuth'
Plug 'editorconfig/editorconfig-vim'
"Plug 'ctrlpvim/ctrlp.vim'
Plug 'junegunn/fzf'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'
Plug 'Yggdroot/indentLine'
Plug 'ryanoasis/vim-devicons'

Plug 'arrufat/vala.vim'
"Plug 'pangloss/vim-javascript'
"Plug 'mxw/vim-jsx'
Plug 'neoclide/vim-jsx-improve'
Plug 'dart-lang/dart-vim-plugin'
Plug 'Chiel92/vim-autoformat'

"Plug 'valloric/MatchTagAlways'

Plug 'w0rp/ale'

Plug 'ayu-theme/ayu-vim'
"Plug 'hzchirs/vim-material'
Plug 'kristijanhusak/vim-hybrid-material'
Plug 'fauzie811/vim-mtrl'

Plug 'kana/vim-fakeclip'

call plug#end()

set encoding=UTF-8

syntax enable
set termguicolors
"let ayucolor="mirage"
"colorscheme ayu
set background="dark"
colorscheme mtrl
set t_Co=256

set showmatch
set number
set hidden
set numberwidth=5
set timeoutlen=1000
set ttimeoutlen=0
set laststatus=2
set cursorline
set colorcolumn=80
set nofoldenable
set tabstop=4 shiftwidth=4 softtabstop=4 expandtab

nnoremap <C-p> :FZF<CR>

let NERDTreeShowHidden = 1
let NERDTreeMinimalUI = 1
let NERDTreeAutoDeleteBuffer = 1
let g:NERDTreeDirArrowExpandable = '▶'
let g:NERDTreeDirArrowCollapsible = '▼'

let g:indentLine_char = '│'
let g:indentLine_first_char = '│'
let g:indentLine_showFirstIndentLevel = 0
let g:indentLine_setColors = 0
let g:enable_bold_font = 1
let g:enable_italic_font = 1

let g:WebDevIconsUnicodeDecorateFolderNodes = 1
"let g:WebDevIconsUnicodeDecorateFolderNodeDefaultSymbol = ''
"let g:WebDevIconsNerdTreeAfterGlyphPadding = '  '

let g:ctrlp_custom_ignore = '\v[\/](node_modules|build|target|dist)|(\.(swp|ico|git|svn))$'
"let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
"let g:ctrlp_custom_ignore = '\v[\/]\.(DS_Storegit|hg|svn|optimized|compiled|node_modules)$'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme = 'mtrl'

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
\  'php': ['phpcs'],
\}
let g:ale_php_phpcs_standard = 'PSR2'

let g:formatdef_standard = '"standard --fix"'
let g:formatters_javascript = ['standard']

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

map <F9> :bprevious<CR>
map <F10> :bnext<CR>

hi NERDTreeDir guifg=#00bcd4 ctermfg=cyan
hi NERDTreeCWD guifg=#eceff1 ctermfg=white
