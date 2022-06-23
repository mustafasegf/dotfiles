set number
set rnu
" set nohlsearch
set ignorecase
set smartcase
set hidden
set noerrorbells
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set wrap
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set scrolloff=12
set noshowmode
set signcolumn=yes:2
set completeopt=menuone,noinsert
set cmdheight=1
set updatetime=50
set shortmess+=c
set termguicolors
set pumblend=15
set mouse=a
set winbar=%=%{expand('%:~:.')}
syntax on

call plug#begin('~/.vim/plugged')
"Theme
Plug 'gruvbox-community/gruvbox'
Plug 'dracula/vim', { 'as': 'dracula' }

"LSP
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/nvim-cmp'
Plug 'L3MON4D3/LuaSnip'
Plug 'onsails/lspkind-nvim'
Plug 'williamboman/nvim-lsp-installer'
Plug 'jose-elias-alvarez/null-ls.nvim'

"treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/playground'

"Language spesific
Plug 'ray-x/go.nvim'
Plug 'mfussenegger/nvim-jdtls'

"file tree
Plug 'kyazdani42/nvim-web-devicons'
Plug 'kyazdani42/nvim-tree.lua'

"buffer
Plug 'akinsho/bufferline.nvim', {'tag': 'v2.*'}

"terminal
Plug 'akinsho/toggleterm.nvim'

"cosmetic
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'p00f/nvim-ts-rainbow'
Plug 'nvim-lualine/lualine.nvim'
Plug 'norcalli/nvim-colorizer.lua'
" Plug 'mhinz/vim-startify'

"git
Plug 'pwntester/octo.nvim'
Plug 'tpope/vim-fugitive'
Plug 'APZelos/blamer.nvim'
Plug 'lewis6991/gitsigns.nvim'
Plug 'folke/trouble.nvim'

"addon app
Plug 'kristijanhusak/vim-dadbod-ui'
Plug 'tpope/vim-dadbod'
Plug 'NTBBloodbath/rest.nvim'

"auto
Plug 'tzachar/cmp-tabnine', { 'do': './install.sh' }
Plug 'github/copilot.vim'
Plug 'windwp/nvim-autopairs'
 
"quality of life
Plug 'b3nj5m1n/kommentary'
Plug 'windwp/nvim-ts-autotag'
Plug 'matze/vim-move'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'tpope/vim-surround'
Plug 'nvim-telescope/telescope.nvim'
Plug 'Pocco81/AutoSave.nvim'
Plug 'ThePrimeagen/refactoring.nvim'
Plug 'windwp/nvim-spectre'

"session
Plug 'rmagatti/auto-session'
Plug 'rmagatti/session-lens'

"Debugger
Plug 'mfussenegger/nvim-dap'
Plug 'rcarriga/nvim-dap-ui'
Plug 'theHamsta/nvim-dap-virtual-text'
Plug 'nvim-telescope/telescope-dap.nvim'
Plug 'leoluz/nvim-dap-go'
Plug 'szw/vim-maximizer'

"misc
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'andweeb/presence.nvim'
Plug 'tversteeg/registers.nvim', { 'branch': 'main' }
Plug 'ThePrimeagen/harpoon'
call plug#end()

lua require("init")

set rtp+=/home/mustafa/go/pkg/mod/github.com/momaek/formattag@v0.0.7/vim
