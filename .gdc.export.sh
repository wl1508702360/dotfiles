export EDITOR=vim
export SVN_EDITOR=/usr/bin/vi

export TERM=xterm-256color
export SOCKS5_SERVER=127.0.0.1:1080

# for php dev
export APACHE_USER='www-data'
export www=/var/www/html
export php=/var/www/html/php
export xadmin=/var/www/html/php/xadmin
export jishi=/var/www/html/php/jishi_sys
export api=/var/www/html/php/api
export api2=/var/www/html/php/api2/dist
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
export MANWIDTH=80

unset PATH
export PATH=/bin:/usr/bin:/usr/local/bin:/sbin:/usr/sbin:/usr/local/sbin

# Home's bin
if [[ -d $HOME/bin ]]; then
  export PATH=$HOME/bin:$PATH
fi

# JAVA_HOME
if [[ -d /opt/jdk1.8.0_121 ]]; then
    export JAVA_HOME=/opt/jdk1.8.0_121
    export PATH=$PATH:$JAVA_HOME/bin
fi

# eclipse
if [[ -d /opt/eclipse ]]; then
    export PATH=$PATH:/opt/eclipse
fi

# composer bin
if [[ -d $HOME/.config/composer/vendor/bin ]]; then
    export PATH=$HOME/.config/composer/vendor/bin:$PATH
fi

# php's bin
if [[ -d /usr/local/php/bin ]]; then
    export PATH=/usr/local/php/bin:$PATH
fi

# redis' bin
if [[ -d /usr/local/redis/bin ]]; then
    export PATH=/usr/local/redis/bin:$PATH
fi

