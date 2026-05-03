ANSIBLE_PLAYBOOK := $(HOME)/.local/ansible-venv/bin/ansible-playbook
INVENTORY := inventory/local/
PLAYBOOK ?= thinkpad.yml

.PHONY: install check diff lint

install:
	$(ANSIBLE_PLAYBOOK) -i $(INVENTORY) $(PLAYBOOK)

check:
	$(ANSIBLE_PLAYBOOK) -i $(INVENTORY) $(PLAYBOOK) --check --diff

lint:
	$(ANSIBLE_PLAYBOOK) -i $(INVENTORY) $(PLAYBOOK) --syntax-check
