# ~/.zshrc

# ---------------------------------------------------------------------
# PROMPT: Starship
# ---------------------------------------------------------------------
eval "$(starship init zsh)"


# ---------------------------------------------------------------------
# ALIASES
# ---------------------------------------------------------------------

alias c='clear'
alias l='ls -FG'
alias la='ls -a -FG'
alias ll='ls -l -FG'

# Show Path
alias path='echo -e ${PATH//:/\\n}'

# Show available aliases
alias alias-list='cat ~/.zshrc | grep alias | cut -c 7-'


# Navigation
alias ..='cd ..'
alias ...='cd ../../../'
alias ....='cd ../../../../'
alias .....='cd ../../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../..'



# ---------------------------------------------------------------------
# FZF: Fuzzy Search
# ---------------------------------------------------------------------
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export FZF_DEFAULT_OPTS="-m"
FZF_DEFAULT_OPTS+=" --color='light'"
FZF_DEFAULT_OPTS+=" --height 40%"
FZF_DEFAULT_OPTS+=" --bind 'ctrl-u:preview-up,ctrl-d:preview-down,ctrl-o:toggle+up,ctrl-i:toggle+down,ctrl-space:toggle-preview'"
FZF_DEFAULT_OPTS+=" --preview 'head -500 {}'"
FZF_DEFAULT_OPTS+=" --preview-window=:hidden"




# ---------------------------------------------------------------------
# ZSH OPTIONS
# ---------------------------------------------------------------------
# Enable autocorrection
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

