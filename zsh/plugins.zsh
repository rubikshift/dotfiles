source "$HOME/repos/dotfiles/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh"
source "$HOME/repos/dotfiles/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
source "$HOME/repos/dotfiles/zsh/zsh-history-substring-search/zsh-history-substring-search.zsh"

bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down
