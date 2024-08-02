# dotfiles

## Installing Vim plugins
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

## Source tmux after copying over `.tmux.conf` file

```
tmux source-file ~/.tmux.conf
```

## Quickly edit path variables
```
$ echo $PATH > path_dump.txt
$ vim path_dump.txt
$ export PATH=$(cat path_dump.txt)
```

## Git settings
```
$ git config --global core.editor "vim"
$ git config --global user.name "John Doe"
$ git config --global user.email johndoe@example.com
```

## ssh-add your private key
```
$ eval "$(ssh-agent -s)"
$ ssh-add /path/to/private/key
```
or, a simpler solution:
```
Host github.com
  IdentityFile /path/to/private/key
```

## Looking for commands in your bash history
```
$ history | grep tag_generator.py
> 7649  vi tag_generator.py
> 7658  python tag_generator.py
```

## Find commands around the timeframe of a search pattern.
Run `history | grep` first as shown above, and from the line numbers seen there, run
```
$ fc -l 7650 7680
```

## Refresh AFS tokens
```
kinit username@CSAIL.MIT.EDU
aklog
```

## `ncdu` util to find space consumption of folders
```
apt install ncdu
ncdu /parent/folder/to/evaluate
```
