.PHONY: homebrew vundler ohmyzsh
        rbenv ansible misc import_dotfiles

homebrew:
	scripts/homebrew

vundler:
	scripts/vundler

ohmyzsh:
	scripts/ohmyzsh

rbenv:
	scripts/rbenv

ansible:
	scripts/ansible

misc:
	scripts/misc

import_dotfiles:
	scripts/import-dotfiles

.PHONY: export_dotfiles
export_dotfiles:
	scripts/export-dotfiles

all: homebrew vundler ohmyzsh
     rbenv ansible misc import_dotfiles
