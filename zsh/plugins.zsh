source "$XDG_CONFIG_HOME/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh"
source "$XDG_CONFIG_HOME/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
source "$XDG_CONFIG_HOME/zsh/zsh-history-substring-search/zsh-history-substring-search.zsh"
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down
bindkey "^[[3~" delete-char
