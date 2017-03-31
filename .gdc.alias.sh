alias l="ls -lhF"
alias ll="ls -lF"
alias la="ls -AF"
alias info="info --vi-keys"
alias chownwww="sudo chown -Rc ${APACHE_USER}.${APACHE_USER} /var/www/html"
alias chmodwww="sudo chmod -Rc g+w /var/www/html"
alias update="sudo aptitude update && sudo aptitude -y dist-upgrade && sudo aptitude clean && echo 'update ok'"
alias google-proxy='google-chrome --proxy-pac-url=file:///home/gdc/.gdc.pac'
alias takeover="tmux detach -a"
alias screenshot="scrot -cd 5 -s"
alias googleproxy="google-chrome --proxy-server=socks5://127.0.0.1:1080"
alias hex2bin="objcopy -I ihex -O binary"

alias psg="ps aux | grep"
alias h="history"
alias vi="vim"
alias less="less -R"

if [[ -r ~/.gdc.alias.private.sh ]]; then
  . ~/.gdc.alias.private.sh
fi
