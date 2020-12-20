set hlsearch " highlight all search results

set nocompatible
filetype off

call plug#begin()

" LaTeX editing
Plug 'lervag/vimtex' 
Plug 'KeitaNakamura/tex-conceal.vim', {'for': 'tex'}

" Snippets

Plug 'SirVer/ultisnips'
" NERDTree
Plug 'preservim/nerdtree'

" Autocomplete
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" fzf
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

" Python syntax highlighting
Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'} 

" Solarized
Plug 'altercation/vim-colors-solarized'

Plug 'arcticicestudio/nord-vim'

call plug#end()

syntax on 
set number 

"au BufNewFile,BufRead *.py
set expandtab       " replace tabs with spaces
set autoindent      " copy indent when starting a new line
set tabstop=4
set softtabstop=4
set shiftwidth=4

nmap <C-n> :NERDTreeToggle<CR>

set spelllang=en_gb,nl

" UltiSnips
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
let g:UltiSnipsSnippetDirectories = ["UltiSnips"]

" Autocomplete stuff
nmap <silent> gd <Plug>(coc-definition)
nmap <leader>rn <Plug>(coc-rename)
"set hidden
"set cmdheight=1
"set updatetime=300
"set shortmess+=c
"set signcolumn=yes

set conceallevel=2
let g:tex_conceal = 'abdmg'
let g:tex_flavor = 'latex'

let g:solarized_termcolors=256
colorscheme solarized


