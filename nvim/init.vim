set hlsearch " highlight all search results

set nocompatible
filetype off

call plug#begin()

" LaTeX
Plug 'lervag/vimtex' 
Plug 'KeitaNakamura/tex-conceal.vim', {'for': 'tex'}
set conceallevel=2
let g:tex_conceal = 'abdmg'
let g:tex_flavor = 'latex'

" Snippets
Plug 'SirVer/ultisnips'
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
let g:UltiSnipsSnippetDirectories = ["UltiSnips"]

" NERDTree
Plug 'preservim/nerdtree'

" Autocomplete
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

syntax on " syntax highlighting 
set number " set line numbers

set tabstop=4
set shiftwidth=4
set expandtab

nmap <C-n> :NERDTreeToggle<CR>

set spelllang=nl,en_gb

" Autocomplete stuff
set hidden
set cmdheight=1
set updatetime=300
set shortmess+=c
set signcolumn=yes
