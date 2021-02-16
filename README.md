# dotfiles
This is my dot files.`Makefile` is included to setup them.

Before `make setup`, please install [Prezto](https://github.com/sorin-ionescu/prezto). 

```zsh
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
```	

```zsh
setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
	ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done
```

## Make targets
- `make setup`

Install dot files under $HOME.

After `make setup`, reload .zshrc.

```zsh
source ~/.zshrc
```

## Author
[Katsuhisa Kitano](https://twitter.com/katsuhisa__)