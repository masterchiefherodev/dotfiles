" PLUGINS ---------------------------------------------------------------- {{{


" Plugin code goes here.

call plug#begin('/home/masterchief/.config/nvim/plugged')

Plug 'morhetz/gruvbox'
Plug 'yggdroot/indentline'
Plug 'ryanoasis/vim-devicons'
Plug 'preservim/nerdtree'
Plug 'sheerun/vim-polyglot'

"Prettier
Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }
"Status Bar
Plug 'vim-airline/vim-airline'

"Code
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'
Plug 'easymotion/vim-easymotion'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'eslint/eslint'
Plug 'alvan/vim-closetag'
call plug#end()



" }}}

" MAPPINGS --------------------------------------------------------------- {{{

" Mappings code goes here.

  let mapleader = " "
  nnoremap <leader>w :w<CR>
  inoremap jj <Esc>  
  nnoremap <leader>s :source %<CR>
  nnoremap , :
  nnoremap <leader>q :q<CR>
  nnoremap qq :q!<CR>
  nnoremap <leader>h :split<CR>
  nnoremap <leader>v :vsplit<CR>
  nnoremap <leader>f /

  "Split controls
  nnoremap <c-j> <c-w>j
  nnoremap <c-k> <c-w>k
  nnoremap <c-h> <c-w>h
  nnoremap <c-l> <c-w>l

  noremap <c-up> <c-w>+
  noremap <c-down> <c-w>-
  noremap <c-left> <c-w>>
  noremap <c-right> <c-w><

  "NERDTree
  nnoremap <F5> :NERDTreeToggle<cr>
  let NERDTreeIgnore=['\.git$', '\.jpg$', '\.mp4$', '\.ogg$', '\.iso$', '\.pdf$', '\.pyc$', '\.odt$', '\.png$', '\.gif$', '\.db$']

  "Easymotion
  nmap <Leader>l <Plug>(easymotion-overwin-f2)
  " }}}
  
  "GOTO -------------------------------------------------------------------------------{{{

  nmap <silent> gd <Plug>(coc-definition)
  nmap <silent> gi <Plug>(coc-implementation)
  nmap <silent> gy <Plug>(coc-type-definition)
  nmap <silent> gr <Plug>(coc-references)

  "}}}

  " VIMSCRIPT -------------------------------------------------------------- {{{

" This will enable code folding.
" Use the marker method of folding.
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END

"Completition
"Navigate
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
"Completition
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif



" More Vimscripts code goes here.

" }}}

" STATUS LINE ------------------------------------------------------------ {{{

" }}}

"BASIC CONFIGURATION-----------------------------------------------------  {{{

syntax on
set mouse=a
set rnu
set number
set cursorline
set cursorcolumn
set tabstop=2
set expandtab
set nobackup
set smartindent
set scrolloff=10
set nowrap
set noswapfile
set incsearch
set ignorecase
set wildmenu
set encoding=utf-8
set termguicolors
set clipboard=unnamedplus
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx
set colorcolumn=90
"Theme
set background=dark
let g:gruvbox_contrast_dark="soft"
colorscheme gruvbox
"set guifont=Monospace\ Regular\ 12

"Font
"set guifont=CaskaydiaCove Nerd Font\ Regular\ 10


" }}}

"ATOUCLOSE --------------------------------------------------{{{
let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.php,*.jsx,*.js"
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'
let g:closetag_emptyTags_caseSensitive = 1

let g:closetag_regions = {
    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.jsx': 'jsxRegion',
    \ 'typescriptreact': 'jsxRegion,tsxRegion',
    \ 'javascriptreact': 'jsxRegion',
    \ }

let g:closetag_shortcut = '>'
let g:closetag_close_shortcut = '<leader>>'

"}}}
