set scrolloff=8
set number 
set relativenumber 
set tabstop=2 softtabstop=2
set shiftwidth=4
set expandtab
set smartindent

let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.local/share/nvim/site/autoload')
Plug 'junegunn/fzf', { 'do': { -> fzf#install } }
Plug 'junegunn/fzf.vim'
Plug 'folke/tokyonight.nvim'
Plug 'tpope/vim-fugitive'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.8' }
Plug 'ThePrimeagen/harpoon', { 'branch': 'harpoon2' }
call plug#end()

colorscheme tokyonight-storm

let mapleader = " "
nnoremap <C-p> :GFiles<CR>
nnoremap <C-f> :Files<CR>
nnoremap <leader>v :Vex<CR>
nnoremap <C-e> :Ex<CR>
nnoremap <C-j> :cnext<CR>
nnoremap <C-k> :cprev<CR>

nnoremap <leader>ff <cmd>Telescope find_files<CR>
nnoremap <leader>fg <cmd>Telescope live_grep<CR>
nnoremap <leader>fb <cmd>Telescope buffers<CR>
nnoremap <leader>fh <cmd>Telescope help_tags<CR>
