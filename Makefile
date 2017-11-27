.PHONY: all tmux zsh vim

all: tmux zsh vim

tmux:
	ln -s -f $(CURDIR)/tmux.conf ~/.tmux.conf

zsh:
	ln -s -f $(CURDIR)/zshrc ~/.zshrc

vim:
	ln -s -f $(CURDIR)/vim ~/.vim
