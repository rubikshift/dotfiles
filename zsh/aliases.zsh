command -v brew > /dev/null && alias brewup="brew update && brew upgrade; brew doctor"
{ command -v bat > /dev/null && alias cat=bat } || { command -v batcat > /dev/null && alias cat=batcat }
{ command -v fd > /dev/null && alias find=fd } || { command -v fdfind > /dev/null && alias find=fdfind && alias fd=fdfind}
alias l="ls -lah"
alias fl="l | rg -i"
alias les=less
alias lg=lazygit
command -v eza > /dev/null && alias ls="eza -g --color=always"
alias mail=neomutt
alias r="python3 -m radian"
alias rgf="rg --files | rg -i"
alias rm="rm -i"
alias tx=tmuxinator
alias vi=nvim
alias vim=nvim
