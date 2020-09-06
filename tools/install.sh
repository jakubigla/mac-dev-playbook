#!/usr/bin/env bash
set -e

xcode-select --install || true

if ! command -v ansible-playbook &> /dev/null; then
  sudo -H pip3 install ansible
fi

ansible-galaxy install -r requirements.yml
ansible-playbook main.yml -i inventory -K

apm install \
  go-plus \
  go-debug \
  go-signature-statusbar \
  file-icons \
  highlight-selected \
  minimap \
  minimap-highlight-selected \
  monokai \
  pp-markdown \
  language-terraform \
  local-history

if [ ! -d "$HOME/.oh-my-zsh" ]; then
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi

if [ ! -d "$HOME/.oh-my-zsh/custom/themes/powerlevel10k" ]; then
  git clone https://github.com/romkatv/powerlevel10k.git $HOME/.oh-my-zsh/custom/themes/powerlevel10k
fi
