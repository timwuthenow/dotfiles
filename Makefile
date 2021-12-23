FILES = .gitconfig .vimrc 
ZPREZTO_FILES = .zshrc .zpreztorc
VSCODE_FILES = settings.json

VSCODE_PATH = $$HOME/Library/Application\ Support/Code/User

PWD := $(shell pwd)

setup:
	@echo Making symlinks to dotfiles...
	@echo The files are $(FILES)
	@echo The VSCODE_PATH is $(VSCODE_PATH)
	for f in $(FILES); do \
		rm -f $$HOME/$$f; \
		ln -s $(PWD)/$$f $$HOME/$$f; \
	done

	@echo Put zprezto dotfiles...
	for zpreztof in $(ZPREZTO_FILES); do \
		cp -f $(PWD)/prezto/$$zpreztof $$HOME/$$zpreztof; \
	done

	@echo Put vscode dotfiles...
	for vscodef in $(VSCODE_FILES); do \
		cp -f $(PWD)/vscode/$$vscodef $(VSCODE_PATH)/$$vscodef; \
	done

.PHONY:	setup