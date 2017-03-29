#!/bin/sh
# FileName: .gdc.sh
# Author  : Gao D. Cheng
# Email   : dickens.gao@gmail.com
#
# This file should be put into $HOME directory. 
# And add below line to $HOME/.bashrc file to get itself included.
# code : . $HOME/.gdc.sh

# install on-my-zsh
# sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# gdc's export
if [[ -f ~/.gdc.export.sh ]]; then
  source ~/.gdc.export.sh
fi

# gdc's alias
if [[ -f ~/.gdc.alias.sh ]]; then
  source ~/.gdc.alias.sh
fi

# gdc's color
if [[ -f ~/.gdc.color.sh ]]; then
  source ~/.gdc.color.sh
fi

# load ~/.Xdefaults
[[ -e $HOME/.Xdefaults ]] && [[ -n ${DISPLAY} ]] && xrdb -merge $HOME/.Xdefaults  > /dev/null 2>&1
