set number
set relativenumber
set autoindent
set cc=80
set encoding=UTF-8
set noswapfile
set scrolloff=5
set cursorline
set showmatch

filetype indent on
set shiftwidth=4
set tabstop=4
set softtabstop=4



call plug#begin()
	" Autocomplete
	Plug 'neoclide/coc.nvim', {'branch': 'release'}

	" Appearance
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'rafi/awesome-vim-colorschemes'
"	Plug 'ryanoasis/vim-devicons'
	
	" Functional
	Plug 'tpope/vim-surround'
	Plug 'tc50cal/vim-terminal'
"	Plug 'terryma/vim-multiple-cursors'
	Plug 'preservim/tagbar'
	Plug 'nvim-lua/plenary.nvim'
	Plug 'chrisbra/Colorizer'
	Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
	Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
	Plug 'preservim/nerdtree' |
            \ Plug 'ryanoasis/vim-devicons'
	Plug 'tpope/vim-commentary'
	Plug 'justinmk/vim-sneak'
	Plug 'neoclide/coc-emmet'
	Plug 'leafgarland/typescript-vim'
call plug#end()

let g:airline_theme='jellybeans'
let g:tagbar_sort = 0
let g:sneak#label = 1
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''
let python_highlight_all = 1
let g:coc_global_extensions = ['coc-pyright', 'coc-yaml', 'coc-json', 'coc-emmet', 'coc-eslint', 'coc-prettier', 'coc-tsserver', 'coc-tslint', 'coc-tslint-plugin', 'coc-css', 'coc-html']
" 'coc-emoji', 'coc-eslint', 'coc-prettier',
" 'coc-tsserver', 'coc-tslint', 'coc-tslint-plugin',
" 'coc-css', 'coc-json', 'coc-pyright', 'coc-yaml'
"]

nmap <F2> :NERDTreeToggle<CR>
nmap <F3> :TagbarToggle<CR>

nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>

tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l

nnoremap ,<space> :nohlsearch<CR>
nnoremap ,f <cmd>Telescope find_files<cr>
nnoremap ,g <cmd>Telescope live_grep<cr>
nnoremap ,n :NERDTreeFocus<CR>

map f <Plug>Sneak_s
map F <Plug>Sneak_S

imap jj <Esc>

colorscheme jellybeans

" Better display for messages
set cmdheight=2
" Smaller updatetime for CursorHold & CursorHoldI
set updatetime=300
" don't give |ins-completion-menu| messages.
set shortmess+=c
" always show signcolumns
set signcolumn=yes

" Use `lp` and `ln` for navigate diagnostics
nmap <silent> <leader>lp <Plug>(coc-diagnostic-prev)
nmap <silent> <leader>ln <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> <leader>ld <Plug>(coc-definition)
nmap <silent> <leader>lt <Plug>(coc-type-definition)
nmap <silent> <leader>li <Plug>(coc-implementation)
nmap <silent> <leader>lf <Plug>(coc-references)

" Remap for rename current word
nmap <leader>lr <Plug>(coc-rename)

" Use K for show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if &filetype == 'vim'
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')
