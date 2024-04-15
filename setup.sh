#!/bin/bash
set -e

chsh -s $(command -v zsh) $USER
mkdir -p ${XDG_CONFIG_HOME:-$HOME/.config}

# zsh
git submodule update --init --recursive
cp -rT zsh ${XDG_CONFIG_HOME:-$HOME/.config}/zsh

for zshfile in zshenv zshrc zlogin
do
[[ -f zsh/$zshfile ]] && cat << EOF > $HOME/.$zshfile
source ${XDG_CONFIG_HOME:-$HOME/.config}/zsh/$zshfile
EOF
done

# tmux
git clone --depth 1 https://github.com/tmux-plugins/tpm $HOME/.tmux/plugins/tpm || :
git clone --depth 1 https://github.com/jimeh/tmux-themepack.git $HOME/.tmux-themepack || :
cp -rT tmux ${XDG_CONFIG_HOME:-$HOME/.config}/tmux

# neovim
git clone --depth 1 --filter=blob:none https://github.com/folke/lazy.nvim.git --branch=stable $HOME/.local/share/nvim/lazy || :
cp -rT nvim ${XDG_CONFIG_HOME:-$HOME/.config}/nvim
nvim --headless "+Lazy! sync" +qa

# fzf
git clone --depth 1 https://github.com/junegunn/fzf.git $HOME/.fzf || :
$HOME/.fzf/install --all --xdg --no-bash --no-fish

# addons
CARGO_HOME=$HOME/.local/share/cargo cargo install eza
GEM_HOME=$HOME/.local/share/gem gem install tmuxinator
GOBIN=$HOME/.local/share/go/bin go install github.com/jesseduffield/lazygit@latest
GOBIN=$HOME/.local/share/go/bin go install github.com/jesseduffield/lazydocker@latest

source ~/.zlogin
source ~/.zshenv
source ~/.zshrc
