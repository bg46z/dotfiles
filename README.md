dotfiles
========

This is a collection of my dotfiles, and other configuration necessities for my workflow.

* `i3`
* `zsh`
* `mutt`
* [`powerline-fonts`](https://github.com/powerline/fonts) 
* `spectrwm` 


This uses submodules for some things, so after you clone, you have to do the following:

`git submodule init && git submodule update`

OSX Note:  
For ZSH config to work you need to download and use the latest [GNU coreutils](http://www.gnu.org/software/coreutils/).

You can also use [Homebrew](http://brew.sh) to install the GNU coreutils package:

`brew install coreutils`

In the future I plan to move aliasing to autoloaded functions in order to reduce the startup time.

