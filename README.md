# My Vim Configuration

Based on [fisa-vim-config](https://github.com/fisadev/fisa-vim-config)

## Installation

1. `git clone http://github.com/trinitronx/dot-vim.git ~/.vim`
2. `cd ~/.vim`
3. `git submodule update --init fisa-vim-config`
4. `ln -s ~/.vim/vimrc ~/.vimrc`
5. `vim +BundleInstall +qall` _installs all of the plugins_

## Requirements

 * Hammer.vim requires:
   * A vim built with `+ruby` support. (`vim --version | grep '+ruby'`)
   * Same ruby version that [vim was compiled against](http://mattmargolis.net/scripting_vim_with_ruby.pdf)<br/>
     ([RVM users be aware of this](https://github.com/matthias-guenther/hammer.vim#rvm-users)
     add to your `.bashrc` or `.bash_functions`:<br/>
     `function vim() { unset GEM_PATH GEM_HOME; command vim "$@" }`
     <br/>Run `rvm use system` before next step!)
   * Ruby headers & gems: 
     * `sudo apt-get -y install ruby1.9.1-dev`
     * `[sudo] gem install github-markup tilt redcarpet`
   * On Linux, set a default browser:

    # To set the default application for http(s):// links (replace browser.desktop by your browser's .desktop, e.g. firefox.desktop or chromium.desktop):
    xdg-mime default browser.desktop x-scheme-handler/http
    xdg-mime default browser.desktop x-scheme-handler/https
    xdg-mime default browser.desktop text/html


**Linux**

 * [Vim](http://www.vim.org/)
   * Debian/Ubuntu: `sudo apt-get install vim-nox`

**Mac**

 * [MacVim](https://github.com/b4winckler/macvim)  (with +clientserver)
   * `rvm use system`
   * `brew install https://gist.github.com/trinitronx/8348843/raw/3f2146de21ad95f7cc725781fc3952a015f5b1f0/macvim.rb`
   * `ln -s /usr/local/bin/mvim /usr/local/bin/vim`

## Updating

1. `git submodule update --init fisa-vim-config`
2. `vim +Bundleinstall +qall`
3. `for d in $(ls -d1 bundle/*); do  git add ${d%/}; done`
4. `git commit -m 'Updating all submodules to latest from fisa-vim-config'`
5. Remove any other plugins that are deprecated or gone from fisa-vim-config

To update all submodules to latest:

 * `git submodule update --init --recursive`
