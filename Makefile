
all: install

install:
	cp -rf .vim ~/
	cp .vimrc ~/
	cp .githelpers ~/
	cp .slate ~/
	cp .tmux.conf ~/
	cp .bashrc ~/
	cp .gdc.alias.sh ~/
	cp .gdc.color.sh ~/
	cp .gdc.sh ~/

update:
	cp -rf ~/.vim .
	cp ~/.vimrc .
	cp ~/.githelpers .
	cp ~/.slate .
	cp ~/.tmux.conf .
	cp ~/.bashrc .
	cp ~/.gdc.alias.sh .
	cp ~/.gdc.color.sh .
	cp ~/.gdc.sh .
