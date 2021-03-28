set -gx LANG "en_US.UTF-8"
# set -g fish_prompt_pwd_dir_length 0
# set -g theme_date_format "+ %H:%M"
# set -g theme_display_hostname yes
# set -g theme_display_user yes
# set -g theme_title_use_abbreviated_path no
# set -g theme_color_scheme dark
# set -g theme_nerd_fonts yes

# set -g theme_newline_cursor yes

# set --universal ayu_variant dark && ayu_load_theme

alias vi=nvim
alias vim=nvim

alias lg=lazygit

set -gx EDITOR nvim
set -gx VISUAL nvim

function brewup
    brew update
    brew upgrade
    brew doctor
end

