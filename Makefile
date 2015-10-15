#------------------------------------------------------------------------------
# Matthew Robillard
#------------------------------------------------------------------------------

all: install-all

install-all:
	cp -rf .vim ~/
	cp .vimrc ~/
	cp .githelpers ~/
	cp .gitconfig ~/
	cp .bashrc ~/
	cp .bash_profile ~/
	source ~/.bash_profile 

install-vim:
	cp -rf .vim ~/
	cp .vimrc ~/

install-git:
	cp .githelpers ~/
	cp .gitconfig ~/

install-bash-env:
	cp .basrhc ~/
	cp .bash_profile ~/
	source ~/.bash_profile

update-all:
	cp -rf ~/.vim .
	cp ~/.vimrc .
	cp ~/.githelpers .
