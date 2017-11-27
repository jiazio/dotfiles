.PHONY: all tmux zsh

all: tmux zsh

tmux:
	ln -s -f $(CURDIR)/tmux.conf ~/.tmux.conf

zsh:
	ln -s -f $(CURDIR)/zshrc ~/.zshrc
