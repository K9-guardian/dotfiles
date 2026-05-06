ANSIBLE_PLAYBOOK := $(HOME)/.local/ansible-venv/bin/ansible-playbook
INVENTORY := inventory/local/

.PHONY: install thinkpad mimir check diff lint

install:
	@echo "Usage: make <thinkpad|mimir>" && exit 1

thinkpad:
	$(ANSIBLE_PLAYBOOK) -i $(INVENTORY) thinkpad.yml

mimir:
	$(ANSIBLE_PLAYBOOK) -i $(INVENTORY) mimir.yml

check:
	@test -n "$(PLAYBOOK)" || { echo "Usage: make check PLAYBOOK=<thinkpad.yml|home-bus.yml>"; exit 1; }
	$(ANSIBLE_PLAYBOOK) -i $(INVENTORY) $(PLAYBOOK) --check --diff

lint:
	@test -n "$(PLAYBOOK)" || { echo "Usage: make check PLAYBOOK=<thinkpad.yml|home-bus.yml>"; exit 1; }
	$(ANSIBLE_PLAYBOOK) -i $(INVENTORY) $(PLAYBOOK) --syntax-check
