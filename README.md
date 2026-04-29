# Dotfiles

Ansible collection for my dotfiles.

Usage:
- Run `setup.sh` in `dotfiles-core` to create the ansible virtual environment.
- Create `~/.passfiles/ansible_dotfiles` with password from Bitwarden.
- Run `~/.local/ansible-venv/bin/ansible-playbook -i inventory/local/ <playbook.yml>`.
