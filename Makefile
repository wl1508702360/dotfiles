
all: install

install:
	cp -rf .vim ~/
	cp .vimrc ~/
	cp .githelpers ~/
	cp .slate ~/
	cp .tmux.conf ~/
	cp .Xdefaults ~/
	cp .bashrc ~/
	cp .gdc.alias.sh ~/
	cp .gdc.color.sh ~/
	cp .gdc.sh ~/
	cp .zshrc ~/
	cp .zshenv ~/

update:
	cp -rf ~/.vim .
	cp ~/.vimrc .
	cp ~/.githelpers .
	cp ~/.slate .
	cp ~/.tmux.conf .
	cp ~/.Xdefaults .
	cp .bashrc ~/
	cp ~/.bashrc .
	cp ~/.gdc.alias.sh .
	cp ~/.gdc.color.sh .
	cp ~/.gdc.sh .
	cp ~/.zshrc .
	cp ~/.zshenv .
