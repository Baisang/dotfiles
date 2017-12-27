set -x LANG en_US.UTF-8
set -x LC_ALL en_US.UTF-8

# Non-restrictive umask
umask 022

# Aliases
alias ls "ls -F --color=auto"
alias rm "rm -I"

# Prompt colors
function fish_prompt --description 'Write out the prompt'
    set_color red; echo -n (whoami)
    set_color normal; echo -n '@'
    set_color purple; echo -n (hostname | cut -d . -f1) ''
    set_color cyan; echo -n (prompt_pwd)
    set_color $fish_color_cwd; echo -n "> "
    set_color normal
end

# for sudo !!
function sudo
    if test "$argv" = !!
        eval command sudo $history[1]
    else
        command sudo $argv
    end
end
