#------------------------------------------------------------------------------
# Matthew Robillard
#------------------------------------------------------------------------------

all: install

install:
	cp -rf .vim ../
	cp .vimrc ../
	cp .githelpers ../

update:
	cp -rf ~/.vim .
	cp ~/.vimrc .
	cp ~/.githelpers .
