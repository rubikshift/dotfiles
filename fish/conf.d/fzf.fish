set -gx FZF_DEFAULT_OPTS '--height 40% --tmux bottom,40% --layout reverse --border top'
set -gx FZF_TMUX 1
fzf --fish | source
