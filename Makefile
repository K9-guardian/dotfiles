ANSIBLE_PLAYBOOK := $(HOME)/.local/ansible-venv/bin/ansible-playbook
INVENTORY := inventory/local/
_TAGS := $(if $(TAGS),--tags $(TAGS))

.PHONY: install thinkpad mimir pavillion check lint

install:
	@echo "Usage: make <thinkpad|mimir|pavillion>" && exit 1

thinkpad:
	$(ANSIBLE_PLAYBOOK) -i $(INVENTORY) playbooks/thinkpad.yml $(_TAGS)

mimir:
	$(ANSIBLE_PLAYBOOK) -i $(INVENTORY) playbooks/mimir.yml $(_TAGS)

pavillion:
	$(ANSIBLE_PLAYBOOK) -i $(INVENTORY) playbooks/pavillion.yml $(_TAGS)

check:
	@test -n "$(PLAYBOOK)" || { echo "Usage: make check PLAYBOOK=playbooks/<thinkpad.yml|mimir.yml|pavillion.yml>"; exit 1; }
	$(ANSIBLE_PLAYBOOK) -i $(INVENTORY) $(PLAYBOOK) --check --diff $(_TAGS)

lint:
	@test -n "$(PLAYBOOK)" || { echo "Usage: make check PLAYBOOK=<thinkpad.yml|mimir.yml|pavillion.yml>"; exit 1; }
	$(ANSIBLE_PLAYBOOK) -i $(INVENTORY) $(PLAYBOOK) --syntax-check $(_TAGS)
