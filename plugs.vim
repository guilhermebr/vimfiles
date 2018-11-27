call plug#begin('~/.config/nvim/plugged')
" On-demand loading
" ======== Interface ==========
Plug 'drmingdrmer/vim-tabbar'
Plug 'crusoexia/vim-monokai'
Plug 'szw/vim-maximizer'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" ======== Project ===========
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'kien/ctrlp.vim'
Plug 'dyng/ctrlsf.vim'
Plug 'tpope/vim-obsession' " Dependency for vim-prosession
Plug 'dhruvasagar/vim-prosession'
" Plug 'ludovicchabant/vim-gutentags'

" ======= Vim improvments ===
Plug 'vim-scripts/bufkill.vim'
Plug 'justinmk/vim-sneak'
Plug 'sickill/vim-pasta'
Plug 'tpope/vim-surround'
Plug 'terryma/vim-multiple-cursors'
Plug 'Raimondi/delimitMate'
Plug 'tomtom/tcomment_vim'
Plug 'easymotion/vim-easymotion'

Plug 'SirVer/ultisnips'
function! DoRemote(arg)
  UpdateRemotePlugins
endfunction
Plug 'Shougo/deoplete.nvim', { 'do': function('DoRemote') }
Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'
Plug 'benekastah/neomake'
Plug 'zchee/deoplete-go', { 'do': 'make'}
Plug 'airblade/vim-gitgutter'
Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'

"Plug 'majutsushi/tagbar'
" ====== Languages ==========
Plug 'fatih/vim-go', { 'for': 'go' }
"Plug 'elixir-lang/vim-elixir', { 'for': 'elixir' }
"Plug 'slashmili/alchemist.vim', { 'for': 'elixir' }
"Plug 'moby/moby', {'rtp': '/contrib/syntax/vim/'}
Plug 'pangloss/vim-javascript'
Plug 'leshill/vim-json'
Plug 'lervag/vimtex'
Plug 'davidhalter/jedi-vim'
"Plug 'python-mode/python-mode'
" Frontend
Plug 'mattn/emmet-vim'
Plug 'othree/html5.vim'
Plug 'hail2u/vim-css3-syntax'
Plug 'wookiehangover/jshint.vim'
Plug 'tpope/vim-fugitive' "git integration
Plug 'scrooloose/syntastic' "code syntaxis
Plug 'Raimondi/delimitMate' "automatic closing of quotes, parenthesis...
" Add plugins to &runtimepath
"
call plug#end()
