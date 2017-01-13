#!/bin/sh
# FileName: .gdc.sh
# Author  : Gao D. Cheng
# Email   : dickens.gao@gmail.com
#
# This file should be put into $HOME directory. 
# And add below line to $HOME/.bashrc file to get itself included.
# code : . $HOME/.gdc.sh

# export var
export SOCKS5_SERVER=127.0.0.1:1080
export EDITOR=vim
export sdccinclude=/usr/share/sdcc/include
export MINICOM='-m -c on'
export www=/var/www/html
export php=/var/www/html/php
export api=/var/www/html/php/api
export api2=/var/www/html/php/api2/dist
export controller=$api2/app/Http/Controllers/v1
export routes=$api2/routes
export bootstrap=$api2/bootstrap
export vendor=$api2/vendor
export exception=$api2/app/Exceptions
export TERM=xterm-256color
export NODE_PATH=/usr/local/lib/node_modules
if [ -d $HOME/.config/composer/vendor/bin ]; then
    export PATH=$HOME/.config/composer/vendor/bin:$PATH
fi
#Rhythmbox encoding
export GST_ID3_TAG_ENCODING=GBK:UTF-8:GB18030
export GST_ID3V2_TAG_ENCOD ING=GBK:UTF-8:GB18030

# load ~/.Xdefaults
[[ -e $HOME/.Xdefaults ]] && [[ -n ${DISPLAY} ]] && xrdb -merge $HOME/.Xdefaults  > /dev/null 2>&1
