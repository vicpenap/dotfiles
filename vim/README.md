Create symlinks:

    ln -s ~/dotfiles/vim/vimrc ~/.vimrc
    ln -s ~/dotfiles/vim/gvimrc ~/.gvimrc
    mkdir -p ~/.vim
    ln -s ~/dotfiles/vim/colors ~/.vim/colors

Download vundle:
    git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

Based on http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/
