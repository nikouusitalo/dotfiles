set scrolloff=8
:set number
:set rnu
:set tabstop=4 softtabstop=4
:set shiftwidth=4
:set expandtab
:set smartindent
:syntax enable




call plug#begin()



" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Vim (Windows): '~/vimfiles/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

"Theme"

Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'
" Initialize plugin system
"File searching Telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
"Telescope lisäosa
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }


Plug 'neoclide/coc.nvim', {'branch': 'release'}
let g:coc_global_extensions = ['coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-tsserver', 'coc-styled-components', 'coc-eslint', 'coc-phpls', 'coc-blade']




Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'

"color theme"
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'



"snippet react
Plug 'SirVer/ultisnips'
Plug 'mlaursen/vim-react-snippets'
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }



"themes
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }

call plug#end()
"Theme"
colorscheme tokyonight

"File explorer"
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''
" Automaticaly close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Toggle
nnoremap <silent> <C-b> :NERDTreeToggle<CR>


" open new split panes to right and below
set splitright
set splitbelow
" turn terminal to normal mode with escape
tnoremap <Esc> <C-\><C-n>
" start terminal in insert mode
au BufEnter * if &buftype == 'terminal' | :startinsert | endif
" open terminal on ctrl+n
function! OpenTerminal()
  split term://bash
  resize 10
endfunction
nnoremap <c-n> :call OpenTerminal()<CR>


" use alt+hjkl to move between split/vsplit panels
tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l
nnoremap <C-p> :FZF<CR>


lua require("lua-config")
let localmapleader = "\<Space>"

nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
