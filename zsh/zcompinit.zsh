autoload -Uz compinit

# completions
fpath=("${XDG_CONFIG_HOME:-$HOME/.config}/zsh/zsh-completions/src" $fpath)
zmodload zsh/complist
_comp_options+=(globdots)

if [ $(date +'%j') != $(/usr/bin/stat -f '%Sm' -t '%j' ${ZDOTDIR:-$HOME}/.zcompdump) ]; then
  compinit
else
  compinit -C
fi
