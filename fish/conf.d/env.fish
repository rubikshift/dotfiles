# set -gx PATH "/usr/local/opt/python/libexec/bin:$HOME/bin:$HOME/.local/bin:/usr/local/bin:/usr/bin:$PATH"
# test $OSTYPE = 'darwin*'; and set -gx PATH "$PATH:/usr/local/opt/llvm/bin"
set -gx PATH "$HOME/neovim/bin:$HOME/.local/bin:$HOME/.fzf/bin:$HOME/.local/share/go/bin:$HOME/.local/share/gem/bin:$HOME/.local/share/cargo/bin:$PATH"
set -gx LC_ALL en_US.UTF-8
set -gx LC_CTYPE en_US.UTF-8
set -gx VISUAL nvim
set -gx EDITOR "$VISUAL"
# set -gx TERM xterm-256color
set -gx STORAGE_DRIVER overlay
set -gx CARGO_HOME $HOME/.local/share/cargo
set -gx GEM_HOME $HOME/.local/share/gem
set -gx GOPATH $HOME/.local/share/go
#set -gx TZ Europe/Warsaw

# test $OSTYPE = 'darwin*'; and set -gx BROWSER 'open'

set -gx PAGER "less"
set -gx XDG_CONFIG_HOME $HOME/.config/

# set -gx MANPAGER "moar --style xcode --no-linenumbers --no-statusbar"
# set -gx HISTFILE "${ZDOTDIR:-$HOME}/.zsh_history"
# set -gx HISTSIZE 999999999
# set -gx SAVEHIST $HISTSIZE
#
# set -gx skip_global_compinit 1

