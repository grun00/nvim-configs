set encoding=utf-8
set rtp+=~/.fzf

if ! filereadable(expand('~/.config/nvim/autoload/plug.vim'))
  echo "Downloading junegunn/vim-plug to manage plugins..."
  silent !mkdir -p ~/.config/nvim/autoload/
  silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ~/.config/nvim/autoload/plug.vim
  autocmd VimEnter * PlugInstall
endif

"For matching if/ends/do/ends/whatever blocks
runtime macros/matchit.vim

call plug#begin('~/.local/share/nvim/plugged')
" Plug 'mhartington/nvim-typescript', { 'build': './install.sh' }
"
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'Galooshi/vim-import-js'
Plug 'sainnhe/everforest'
Plug 'mxsdev/nvim-dap-vscode-js', { 'do': 'npm install --legacy-peer-deps && npx gulp vsDebugServerBundle && mv dist out' }
Plug 'nvim-neorg/neorg'
Plug 'theHamsta/nvim_rocks', {'do': 'pip3 install --user hererocks && python3 -mhererocks . -j2.1.0-beta3 -r3.0.0 && cp nvim_rocks.lua lua'}
Plug 'mrcjkb/haskell-tools.nvim'
Plug 'joukevandermaas/vim-ember-hbs'
Plug 'NLKNguyen/papercolor-theme'
Plug 'nyoom-engineering/oxocarbon.nvim'
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
Plug 'ludovicchabant/vim-gutentags'
Plug 'kristijanhusak/vim-js-file-import', {'do': 'npm install'}
Plug 'pangloss/vim-javascript'
Plug 'jparise/vim-graphql'
Plug 'walm/jshint.vim'
Plug 'mfussenegger/nvim-lint'
Plug 'mfussenegger/nvim-dap'
Plug 'David-Kunz/jester'
Plug 'AndrewRadev/switch.vim'
Plug 'Chiel92/vim-autoformat'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'nvim-lua/plenary.nvim'
Plug 'MunifTanjim/eslint.nvim'
Plug 'NLKNguyen/papercolor-theme'
Plug 'PotatoesMaster/i3-vim-syntax'
Plug 'RRethy/nvim-treesitter-endwise'
Plug 'Shougo/deoplete-lsp'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Yggdroot/indentLine'
Plug 'alvan/vim-closetag'
Plug 'bluz71/vim-moonfly-colors'
Plug 'camspiers/animate.vim'
Plug 'chrisbra/csv.vim'
Plug 'ellisonleao/glow.nvim'
Plug 'ervandew/supertab'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'gko/vim-coloresque'
Plug 'hachy/eva01.vim'
Plug 'hoob3rt/lualine.nvim'
Plug 'idanarye/vim-merginal'
Plug 'jiangmiao/auto-pairs'
Plug 'jose-elias-alvarez/null-ls.nvim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/gv.vim'
Plug 'kien/rainbow_parentheses.vim'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'leafgarland/typescript-vim'
Plug 'luukvbaal/stabilize.nvim'
Plug 'majutsushi/tagbar'
Plug 'matsuuu/pinkmare'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'mhartington/formatter.nvim'
Plug 'mhinz/vim-signify'
Plug 'mhinz/vim-startify'
Plug 'neovim/nvim-lsp'
Plug 'neovim/nvim-lspconfig'
Plug 'ngmy/vim-rubocop'
Plug 'nikvdp/neomux'
Plug 'nvim-lua/completion-nvim'
Plug 'nvim-lua/lsp_extensions.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'pbrisbin/vim-mkdir'
Plug 'peitalin/vim-jsx-typescript'
Plug 'rainerborene/vim-reek'
Plug 'rebelot/kanagawa.nvim'
Plug 'skanehira/preview-markdown.vim'
Plug 'stsewd/fzf-checkout.vim'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-rhubarb'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'tree-sitter/tree-sitter-go'
Plug 'vim-ruby/vim-ruby'
Plug 'vim-scripts/tComment'
Plug 'xavierchow/vim-swagger-preview'
Plug 'yuezk/vim-js'
Plug 'yuttie/comfortable-motion.vim'
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install --frozen-lockfile --production',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html'] }
let g:AutoPairsMapCR=0
let g:deoplete#enable_at_startup = 1
" <TAB>: completion with deoplete
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
"Colors
"Not Programming
Plug 'jnurmine/Zenburn'
Plug 'morhetz/gruvbox'
Plug 'f1nwe/neovim-molokai'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'vimwiki/vimwiki'
Plug 'ghifarit53/tokyonight-vim'
call plug#end()


" ================ General Config ====================

set autoindent
set autoread
set background=dark
set backspace=indent,eol,start
set clipboard+=unnamedplus
set cmdheight=2
set completeopt=menuone,noinsert,noselect
set diffopt+=vertical
set expandtab
set fillchars+=vert:│
set foldnestmax=5
set gdefault
set hidden
set history=10000
set hlsearch
set inccommand=split
set incsearch
set laststatus=2
set linebreak
set list listchars=tab:»·,trail:·,nbsp:·
set mouse=a
set nobackup
set nofoldenable
set noswapfile
set nowb
set nowritebackup
set number relativenumber
set ruler
set scrolloff=100
set shiftwidth=2
set shortmess+=c
set showcmd
set sidescroll=1
set sidescrolloff=15
set signcolumn=yes
set smartindent
set smarttab
set softtabstop=2
set t_Co=256
set tabstop=2
set termguicolors
set timeout timeoutlen=1500
set undodir=~/.config/nvim/.backups
set undofile
set updatetime=300
colorscheme everforest
" colorscheme oxocarbon
set background=dark
" colorscheme gruvbox
filetype indent on
filetype plugin on
syntax on

if !has('gui_running')
  set t_Co=256
endif
highlight Cursor guifg=magenta guibg=white
highlight iCursor guifg=green guibg=white
set guicursor=n-v-c:block-Cursor
set guicursor+=i:ver100-iCursor
set guicursor+=n-v-c:blinkon0
set guicursor+=i:blinkwait10

" =========== generic remaps
" Leader key is <space>
let mapleader=" "
" For repeating macros
nnoremap , @@
"<leader-l> redraws the screen and removes any search highlight
nnoremap <silent> <leader>l :nohl<CR><C-l>

" ========== git remaps
" git diff
if &diff
  map <leader>1 :diffget LOCAL<CR>
  map <leader>2 :diffget BASE<CR>
  map <leader>3 :diffget REMOTE<CR>
endif

"Vim fugitive
nnoremap <leader>gw :Gwrite<CR>
nnoremap <leader>gbl :Git blame<CR>
nnoremap <leader>gc :Git commit -v -q<CR>
nnoremap <leader>gd :Gdiff<CR>
nnoremap <space>gl :silent! Glog<CR>:bot copen<CR>
nnoremap <leader>gs :Git<CR>
nnoremap <leader>gps :Git push origin HEAD<CR>
nnoremap <leader>gpl :Git pull origin HEAD<CR>
nnoremap <leader>gbr :GBranch<CR>
nnoremap <leader>gn :Merginal<CR>

" =========== generic autocmds
" Automatically deletes all trailing whitespace on save.
au BufWritePre * %s/\s\+$//e
" Always start in same position when opening file
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif "
au CursorHold * lua vim.diagnostic.open_float()

let $NVIM_TUI_ENABLE_TRUE_COLOR=1
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"

call deoplete#custom#source('_', 'max_menu_width', 80)

lua << EOF
  require("statusline")
EOF

lua << EOF
require'nvim-web-devicons'.get_icons()
require'nvim-web-devicons'.setup {
 color_icons = true;
 default = true;
}

require('nvim-treesitter.configs').setup {
    endwise = {
        enable = true,
    },
}
EOF

lua << EOF
  require("jester").setup({
    dap = {
      console = "externalTerminal"
    }
  })
  local dap = require('dap')
  dap.adapters.node2 = {
    type = 'executable',
    command = 'node',
    args = {os.getenv('HOME') .. '/dev/microsoft/vscode-node-debug2/out/src/nodeDebug.js'},
  }
  dap.configurations.javascript = {
    {
      name = 'Launch',
      type = 'node2',
      request = 'launch',
      program = '${file}',
      cwd = vim.fn.getcwd(),
      sourceMaps = true,
      protocol = 'inspector',
      console = 'integratedTerminal',
    },
    {
      -- For this to work you need to make sure the node process is started with the `--inspect` flag.
      name = 'Attach to process',
      type = 'node2',
      request = 'attach',
      processId = require'dap.utils'.pick_process,
    },
  }
EOF

let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync

let b:copilot_enabled = 'false'
