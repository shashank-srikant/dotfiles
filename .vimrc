set number
set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab
set term=xterm
set autoindent
set showmatch
nnoremap * *``
set hlsearch

" Follow instruction from here https://medium.com/@huntie/10-essential-vim-plugins-for-2018-39957190b7a9
so ~/.vim/plugins.vim

map <C-o> :NERDTreeToggle<CR>
set laststatus=2
if !has('gui_running')
    set t_Co=256
endif
let g:lightline = {'colorscheme': 'wombat'}
