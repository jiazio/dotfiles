.PHONY: all tmux zsh

all: tmux zsh

tmux: tmux.conf
	ln -s $(CURDIR)/tmux.conf ~/.tmux.conf

zsh: zshrc
	ln -s $(CURDIR)/zshrc ~/.zshrc
