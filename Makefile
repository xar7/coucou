target=$(HOME)/.emacs.d $(HOME)/.config/i3 $(HOME)/.config/kitty

.PHONY: backup
backup:
	mkdir -p $(HOME)/.config.old
	cp -r $(HOME)/.emacs.d $(HOME)/.config.old
	cp -r $(HOME)/.config/i3 $(HOME)/.config.old
	cp -r $(HOME)/.config/kitty $(HOME)/.config.old

.PHONY: emacs
emacs:
	ln -sf $(PWD)/emacs.d $(HOME)/.emacs.d

.PHONY: emacsAsDaemon
emacsAsDaemon:
	ln -f $(PWD)/systemd/user/emacs.service $(HOME)/.config/systemd/user/emacs.service
	systemctl enable --user emacs

.PHONY: i3
i3:
	ln -f $(PWD)/config/i3/ $(HOME)/.config/i3

.PHONY: kitty
kitty:
	ln -f $(PWD)/config/kitty/ $(HOME)/.config/kitty
