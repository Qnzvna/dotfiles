.PHONY: vim tmux i3 alacritty

install: vim tmux i3 alacritty

vim:
	cp vim/.vimrc ${HOME}/.vimrc

tmux:
	cp tmux/.tmux.conf ${HOME}/.tmux.conf

i3:
	cp i3/config ${HOME}/.config/i3/config
	cp i3/i3status ${HOME}/.config/i3/i3status

alacritty:
	mkdir -p ${HOME}/.config/alacritty
	cp alacritty/alacritty.yml ${HOME}/.config/alacritty/alacritty.yml
