set -g fish_greeting

source ~/.config/fish/hyde_config.fish

if status is-interactive
    starship init fish | source
end

# List Directory
alias l='eza -lh  --icons=auto' # long list
alias ls='eza -1   --icons=auto' # short list
alias ll='eza -lha --icons=auto --sort=name --group-directories-first' # long list all
alias ld='eza -lhD --icons=auto' # long list dirs
alias lt='eza --icons=auto --tree' # list folder as tree
alias pamcan=pacman
alias in='yay -S'
alias un='yay -R'
alias up='yay -Syuu'
alias lvim='/home/adisaikat/.local/bin/lvim'

# Handy change dir shortcuts
abbr .. 'cd ..'
abbr ... 'cd ../..'
abbr .3 'cd ../../..'
abbr .4 'cd ../../../..'
abbr .5 'cd ../../../../..'

# Always mkdir a path (this doesn't inhibit functionality to make a single dir)
abbr mkdir 'mkdir -p'


# function fish_prompt
#   set_color cyan; echo (pwd)
#   set_color green; echo '> '
# end
