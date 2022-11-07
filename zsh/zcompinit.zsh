autoload -Uz compinit

# completions
fpath=("$HOME/repos/dotfiles/zsh/zsh-completions/src" $fpath)
zmodload zsh/complist
_comp_options+=(globdots)

if [ $(date +'%j') != $(/usr/bin/stat -f '%Sm' -t '%j' ${ZDOTDIR:-$HOME}/.zcompdump) ]; then
  compinit
else
  compinit -C
fi
