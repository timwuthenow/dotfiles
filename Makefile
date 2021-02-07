FILES = .gitconfig .vimrc 
ZPREZTO_FILES = .zshrc .zpreztorc


PWD := $(shell pwd)

setup:
	@echo Making symlinks to dotfiles...
	for f in $(FILES); do \
		rm -f $$HOME/$$f; \
		ln -s $(PWD)/$$f $$HOME/$$f; \
	done

	@echo Making symlinks to zprezto dotfiles...
	for zpreztof in $(ZPREZTO_FILES); do \
		cp -rp $(PWD)/$$zpreztof $$HOME/$$zpreztof; \
	done

.PHONY:	setup