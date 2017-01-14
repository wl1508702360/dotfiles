#!/bin/sh
# FileName: .gdc.sh
# Author  : Gao D. Cheng
# Email   : dickens.gao@gmail.com
#
# This file should be put into $HOME directory. 
# And add below line to $HOME/.bashrc file to get itself included.
# code : . $HOME/.gdc.sh

# gdc's alias
if [[ -f ~/.gdc.alias.sh ]]; then
  source ~/.gdc.alias.sh
fi

# gdc's export
if [[ -f ~/.gdc.export.sh ]]; then
  source ~/.gdc.export.sh
fi

if [ -d $HOME/.config/composer/vendor/bin ]; then
    export PATH=$HOME/.config/composer/vendor/bin:$PATH
fi

# load ~/.Xdefaults
[[ -e $HOME/.Xdefaults ]] && [[ -n ${DISPLAY} ]] && xrdb -merge $HOME/.Xdefaults  > /dev/null 2>&1
