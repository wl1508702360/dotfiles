#!/bin/sh
# alias - - make life easier

alias l='ls -lhF'
alias ll='ls -lF'
alias la='ls -AF'
alias info='info --vi-keys'
alias chownwww='sudo chown -R www-data.www-data /var/www/html/*'
alias chmodwww='sudo chmod -R g+w /var/www/html/*'
alias update="sudo aptitude update && sudo aptitude -y dist-upgrade && sudo aptitude clean && echo 'update ok'"
alias google-proxy='google-chrome --proxy-pac-url=file:///home/gdc/.gdc.pac'
alias takeover="tmux detach -a"
alias screenshot='scrot -cd 5 -s'
alias googleproxy='google-chrome --proxy-server=socks5://127.0.0.1:1080'
alias hex2bin='objcopy -I ihex -O binary'

# ssh short
alias sshali='ssh phpdev@w.xihaxueche.com -p 16822'
alias sshwork='ssh gdc@60.173.247.68 -p 50002'

# lftp short
alias ftpali='lftp w.xihaxueche.com --user ftp_dacheng --password xihaxueche@daxg -p 16899'
alias ftptest='lftp 192.168.100.77 --user ftp_user2 --password gdodc@xihaxueche2016'

alias tmux="TERM=screen-256color-bce tmux"
