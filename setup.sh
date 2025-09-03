#!/bin/bash
set -e

mkdir -p ${XDG_CONFIG_HOME:-$HOME/.config}

stow .

# tmux
git clone --depth 1 https://github.com/tmux-plugins/tpm $HOME/.tmux/plugins/tpm || :

# neovim
git clone --depth 1 --filter=blob:none https://github.com/folke/lazy.nvim.git --branch=stable $HOME/.local/share/nvim/lazy || :
nvim --headless "+Lazy! sync" +qa

# fzf
git clone --depth 1 https://github.com/junegunn/fzf.git $HOME/.fzf || :
$HOME/.fzf/install --all --xdg --no-bash --no-fish

# fisher
curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher

# addons
# CARGO_HOME=$HOME/.local/share/cargo cargo install eza
# GEM_HOME=$HOME/.local/share/gem gem install tmuxinator
# GOBIN=$HOME/.local/share/go/bin go install github.com/jesseduffield/lazygit@latest
# GOBIN=$HOME/.local/share/go/bin go install github.com/jesseduffield/lazydocker@latest
