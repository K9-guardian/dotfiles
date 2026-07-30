#!/bin/bash
PASSFILE="/dev/shm/${USER}_dotfiles_ansible_become_passfile"
TIMER="dotfiles-ansible-passfile-shred"
DURATION="5m"

if [ -s "$PASSFILE" ]; then
  cat "$PASSFILE"
  exit 0
fi

printf "BECOME password: " > /dev/tty
read -rs PASSWORD < /dev/tty
echo "" > /dev/tty

printf "%s" "$PASSWORD" > "$PASSFILE"
chmod 600 "$PASSFILE"

systemd-run --user --unit="$TIMER" --on-active="$DURATION" shred -u "$PASSFILE" >/dev/null 2>&1

printf "%s" "$PASSWORD"
