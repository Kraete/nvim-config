call plug#begin('~/nvim/plugged')
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'bfredl/nvim-miniyank'
Plug 'moll/vim-bbye'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-abolish'
Plug 'StanAngeloff/php.vim'
Plug 'ncm2/ncm2'
Plug 'phpactor/phpactor'
Plug 'phpactor/ncm2-phpactor'
Plug '~/.fzf'
Plug 'neomake/neomake'
Plug 'adoy/vim-php-refactoring-toolbox'
Plug 'mhinz/vim-signify'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'majutsushi/tagbar'
Plug 'joonty/vdebug'
Plug 'tobyS/vmustache'
Plug 'tobyS/pdv'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'mdempsky/gocode', { 'rtp': 'nvim', 'do': '~/.config/nvim/plugged/gocode/nvim/symlink.sh' }
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
"Plug 'ludovicchabant/vim-gutentags'
Plug 'Yggdroot/indentLine'
"Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
"function! DoRemote(arg)
"    UpdateRemotePlugins
"endfunction
"Plug 'c0r73x/neotags.nvim', { 'branch': 'dev', 'do': ':UpdateRemotePlugins' }
call plug#end()


call neomake#configure#automake('nrwi', 500)
:set rnu
:set noshowmode
:set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
:set listchars=tab:→\ ,eol:↲,nbsp:␣,trail:•,extends:⟩,precedes:⟨,space:.
:set list
:set indentkeys-=:
:highlight clear SignColumn
:highlight NeomakeWarningSignDefault ctermbg=black
:highlight NeomakeWarningSignDefault ctermfg=white
:colorscheme alduin
:hi normal ctermbg=None
"let g:indentLine_setColors = 0

let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head',
      \	  'readonly': 'LightlineReadonly'
      \ },
      \ }

function! LightlineReadonly()
  return &readonly && &filetype !=# 'help' ? 'RO' : ''
endfunction

if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

au FileType go set noexpandtab
au FileType go set shiftwidth=4
au FileType go set softtabstop=4
au FileType go set tabstop=4
