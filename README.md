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

## Updating

1. `git submodule update --init fisa-vim-config`
2. `vim +Bundleinstall +qall`
3. `for d in $(ls -d1 bundle/*); do  git add ${d%/}; done`
4. `git commit -m 'Updating all submodules to latest from fisa-vim-config'`
5. Remove any other plugins that are deprecated or gone from fisa-vim-config

To update all submodules to latest:

 * `git submodule update --init --recursive`
