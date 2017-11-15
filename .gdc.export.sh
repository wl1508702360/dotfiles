#!/bin/sh
export EDITOR=vim
export SVN_EDITOR=/usr/bin/vim

export TERM=xterm-256color
export SOCKS5_SERVER=127.0.0.1:1080

# zsh delay
export KEYTIMEOUT=1

# for php dev
export APACHE_USER='www-data'
export www=/var/www/html
export php=/var/www/html/php
export xadmin=/var/www/html/php/xadmin
export jishi=/var/www/html/php/jishi_sys
export api=/var/www/html/php/api
export api2=/var/www/html/php/api2
export controller=$api2/app/Http/Controllers/v1
export routes=$api2/routes
export bootstrap=$api2/bootstrap
export vendor=$api2/vendor
export exception=$api2/app/Exceptions

export NODE_PATH=/usr/local/lib/node_modules

# Rhythmbox encoding
export GST_ID3_TAG_ENCODING=GBK:UTF-8:GB18030
export GST_ID3V2_TAG_ENCOD ING=GBK:UTF-8:GB18030

# man
export MANWIDTH=120

## PATH settings below
unset PATH
export PATH=/bin:/usr/bin:/usr/local/bin:/sbin:/usr/sbin:/usr/local/sbin

# user's private bin and make it hidden to avoid annoying
if [[ -d $HOME/.bin ]]; then
  export PATH=$HOME/.bin:$PATH
fi

# JAVA_HOME
if [[ -d /opt/oracle/jdk1.8.0_152 ]]; then
    export JAVA_HOME=/opt/oracle/jdk1.8.0_152
    export PATH=$JAVA_HOME/bin:$PATH
fi

# eclipse
if [[ -d /opt/eclipse ]]; then
    export PATH=/opt/eclipse:$PATH
fi

# intellij idea
if [[ -d /opt/intellij/idea-IC-172.4343.14 ]]; then
  export PATH=/opt/intellij/idea-IC-172.4343.14/bin:$PATH
fi

# composer
if [[ -d $HOME/.config/composer/vendor/bin ]]; then
    export PATH=$HOME/.config/composer/vendor/bin:$PATH
fi

# php binary
if [[ -d /usr/local/php/bin ]]; then
    export PATH=/usr/local/php/bin:$PATH
fi

# redis binary
if [[ -d /usr/local/redis/bin ]]; then
    export PATH=/usr/local/redis/bin:$PATH
fi

# go binary
export GOROOT=/opt/go
if [[ -d $GOROOT/bin ]]; then
  export PATH=$GOROOT/bin:$PATH
fi

## end PATH settings
