dotfiles
========

## Installation

You need to link a few things to get this working correctly.

```
git clone $repo ~/.dotfiles
ln -s  ~/.dotfiles/zshrc ~/.zshrc
ln -s  ~/.dotfiles/zshenv ~/.zshenv
ln -s ~/.dotfiles/tmux/tmux.conf ~/.tmux.conf
```
## WSL Considerations

This repo was used for my linux and OSX shell configurations. But since needing to work with WSL, the direction has shifted towards simplicity and compatibility with all of WSL's quirks and features.