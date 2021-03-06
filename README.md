# dotfiles

# Installing Vim plugins
(From https://medium.com/@huntie/10-essential-vim-plugins-for-2018-39957190b7a9)

There are several to manage plugins Vim, including Pathogen, Vundle, and Vim 8's native package loading. 

I recommend vim-plug, which can be installed using curl, or auto-installed in .vimrc:
```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```    

With vim-plug, I create a `~/.vim/plugins.vim` file and add a Plug line for each dependency to install, between the required `plug#begin` and `plug#endcalls`.
```
    call plug#begin('~/.vim/plugged')
    Plug 'airblade/vim-gitgutter'
    Plug 'editorconfig/editorconfig-vim'
    Plug 'itchyny/lightline.vim'
    Plug 'junegunn/fzf'
    Plug 'junegunn/fzf.vim'
    Plug 'mattn/emmet-vim'
    Plug 'scrooloose/nerdtree'
    Plug 'terryma/vim-multiple-cursors'
    Plug 'tpope/vim-eunuch'
    Plug 'tpope/vim-surround'
    Plug 'w0rp/ale'
    call plug#end()
```
Source this by adding the following statement to your .vimrc.
```so ~/.vim/plugins.vim```

Finally, launch Vim and run 
```:PlugInstall```

