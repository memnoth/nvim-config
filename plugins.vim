call plug#begin('~/.vim/plugged')

Plug 'patstockwell/vim-monokai-tasty'
Plug 'rhysd/git-messenger.vim'
Plug 'mhinz/vim-signify'
Plug 'jlanzarotta/bufexplorer'
Plug 'vim-scripts/taglist.vim'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'yegappan/mru'
Plug 'neoclide/coc.nvim', {'tag': '*', 'do': './install.sh'}

call plug#end()

" Keymaps

" NERDTree
let g:NERDTreeWinPos = "right"
let NERDTreeShowHidden=0
let NERDTreeIgnore = ['\.pyc$', '__pycache__']
let g:NERDTreeWinSize=35
map <silent><leader>nn :NERDTreeToggle<cr>
map <silent><leader>nb :NERDTreeFromBookmark<Space>
map <silent><leader>nf :NERDTreeFind<cr>

" bufExplorer
let g:bufExplorerDefaultHelp=0
let g:bufExplorerShowRelativePath=1
let g:bufExplorerFindActive=1
let g:bufExplorerSortBy='name'
map <silent><leader>o :BufExplorer<cr>

" MRU
let MRU_Max_Entries = 400
map <silent><leader>f :MRU<CR>

" TagList
map <silent><F8> :TlistToggle<CR>

" Git-Messenger
nmap <silent><Leader>gm <Plug>(git-messenger)

" CoC
source ~/.config/nvim/coc-settings.vim
