set number
set cursorline
set backspace=indent,eol,start
set wildmenu
set nowrap
set showmatch
set matchtime=3
let mapleader = " "
"tabs

set tabstop=2
set softtabstop=0
set expandtab
set shiftwidth=2
set smarttab
set encoding=utf-8
set colorcolumn=80

call plug#begin('$HOME/plugged')

Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'altercation/vim-colors-solarized'
"Plug 'ycm-core/YouCompleteMe'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() }}
Plug 'junegunn/fzf.vim'
Plug 'haishanh/night-owl.vim'
Plug 'sharkdp/bat'
Plug 'sharkdp/fd'
Plug 'rust-lang/rust.vim'
Plug 'https://github.com/kaicataldo/material.vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'jparise/vim-graphql'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'psliwka/vim-smoothie'
Plug 'joshdick/onedark.vim'
call plug#end()

syntax enable

if (has("termguicolors"))
  set termguicolors
endif

let $NVIM_TUI_ENABLE_TRUE_COLOR=1

let g:material_theme_style = 'default'
colorscheme onedark


let $BAT_THEME='Monokai Extended'
let $FZF_DEFAULT_COMMAND='rg --files --ignore-case'

let g:netrw_liststyle = 3
let g:netrw_banner = 0
let g:netrw_browse_split = 4
let g:netrw_winsize = 15
let g:netrw_altv=1

"let g:airline_theme='material'

let g:ycm_autoclose_preview_window_after_completion = 1

let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 1

nmap <silent> <leader>gd <Plug>(coc-definition)
nmap <silent> <leader>gf <Plug>(coc-fix-current)
nmap <silent> <leader>gr <Plug>(coc-references)
nnoremap <silent> <leader>b :Buffer<CR>
nnoremap <silent> <leader>af :Rg <CR>
nnoremap <silent> <leader>f  :Files<CR>
nnoremap <silent> <leader>l :cn<CR>
nnoremap <silent> <leader>h :cp<CR>
nnoremap <silent> <leader>ln :nonu!<CR>

"prettier
nmap <silent> <leader>ps <Plug>(coc-format-selected)
vmap <silent> <leader>ps <Plug>(coc-format-selected)

lua <<EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = "maintained", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  ignore_install = { "javascript" }, -- List of parsers to ignore installing
  highlight = {
    enable = true,              -- false will disable the whole extension
    disable = { "c", "rust" },  -- list of language that will be disabled
  },
}
EOF
