# Dotfiles

## Installation

* Install the Mac OSX [Command Line Tools](https://developer.apple.com/downloads/index.action)
* `rake -T` to see all the available commands and use them to install

### Manual steps

* Install [Powerline fonts](https://github.com/Lokaltog/powerline-fonts), just a matter of
    * `git clone https://github.com/Lokaltog/powerline-fonts.git`
    * doubleclick the fonts and install the ones you need
    * set them in iTerm2:s settings
* Set iTerm2's terminal type to xterm-256color

### Homebrew

After homebrew has been installed, run `brew bundle` from this directory.

### Vim

Install the [Lokaltog/powerline-fonts](https://github.com/Lokaltog/powerline-fonts).
You might also need to set them in iTerm2's settings.

    # install vundle
    git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
    vim +PluginInstall +qall


### Prompt

The `zsh_prompt` is autogenerated by [promptline.vim](https://github.com/edkolev/promptline.vim).
Settings for the prompt are in `vimrc`, change them, source it and regenerate with:

    :PromptlineSnapshot! ~/.zsh_prompt
