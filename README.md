# My Vim Configuration

Based on [fisa-vim-config](https://github.com/fisadev/fisa-vim-config)

## Installation

1. `git clone http://github.com/trinitronx/dot-vim.git ~/.vim`
2. `cd ~/.vim`
3. `git submodule update --init --recursive`
4. `ln -s ~/.vim/vimrc ~/.vimrc`
5. `vim +BundleInstall +qall` _installs all of the plugins_

## Requirements

 * Hammer.vim requires:
   * A vim built with `+ruby` support. (`vim --version | grep '+ruby'`)
   * Same ruby version that vim was compiled against ([RVM users be aware of this](https://github.com/matthias-guenther/hammer.vim#rvm-users))
   * Some gems: `[sudo] gem install github-markup tilt`

**Linux**

 * [Vim](http://www.vim.org/)
   * Debian/Ubuntu: `sudo apt-get install vim`

**Mac**

 * [MacVim](https://github.com/b4winckler/macvim) 

