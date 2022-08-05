.PHONY: vim tmux i3 alacritty xbind tools

HOSTNAME := $(shell hostname)

install: vim tmux i3 alacritty xbind

think: install

dijkstra: install

vim:
	cp vim/.vimrc ${HOME}/.vimrc

tmux:
	cp tmux/.tmux.conf ${HOME}/.tmux.conf

i3:
	jinja2 templates/i3/config.tmpl configs/${HOSTNAME}.json > ${HOME}/.config/i3/config
	jinja2 templates/i3/i3status.tmpl configs/${HOSTNAME}.json > ${HOME}/.config/i3/i3status

alacritty:
	mkdir -p ${HOME}/.config/alacritty
	cp alacritty/alacritty.yml ${HOME}/.config/alacritty/alacritty.yml

xbind:
	cp xbindkeys/.xbindkeysrc ${HOME}/.xbindkeysrc
	xbindkeys

tools:
	cp -r tools/brightness /usr/local/bin/brightness
	chmod +x /usr/local/bin/brightness
