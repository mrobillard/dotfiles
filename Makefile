#------------------------------------------------------------------------------
# Matthew Robillard
#------------------------------------------------------------------------------

all: install

install:
	cp -rf .vim ~/
	cp .vimrc ~/
	cp .githelpers ~/
	cp .gitconfig ~/

update:
	cp -rf ~/.vim .
	cp ~/.vimrc .
	cp ~/.githelpers .
