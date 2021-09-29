# export PATH="/usr/local/opt/python/libexec/bin:$HOME/bin:$HOME/.local/bin:/usr/local/bin:/usr/bin:$PATH"
export PATH="$PATH:/usr/local/opt/llvm/bin"
export LC_ALL=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
export VISUAL=nvim
export EDITOR="$VISUAL"

if [[ "$OSTYPE" == darwin* ]]; then
  export BROWSER='open'
fi

export MANPAGER='nvim +Man!'
