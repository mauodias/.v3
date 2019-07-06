.PHONY: install
install: update pull link

update:
	@echo
	@echo - Installing/updating packages
	@echo
	@pacman -S $(cat packages.txt)

push:
	@echo
	@echo - Preparing to push updates to remote
	@echo
	@git add -N .
	@git add -p
	@git commit -v
	@git pull --rebase
	@git push -v

pull:
	@echo
	@echo - Retrieving updates from remote
	@echo
	@git pull --rebase;

link:
	@echo
	@echo - Creating symlinks for dotfiles in /home/$(whoami)
	@echo
	@./link.sh
