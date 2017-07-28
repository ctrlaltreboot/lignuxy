.PHONY: homebrew vundler ohmyzsh
.PHONY: rbenv ansible misc import_dotfiles

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

.PHONY: list
list:
	@$(MAKE) -pRrq -f $(lastword $(MAKEFILE_LIST)) : 2>/dev/null | \
	awk -v RS= -F: '/^# File/,/^# Finished Make data base/ {if ($$1 !~ "^[#.]") {print $$1}}' | \
	sort | egrep -v -e '^[^[:alnum:]]' -e '^$@$$' | xargs

all: homebrew ohmyzsh rbenv import_dotfiles \
	vundler ansible misc
