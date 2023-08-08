export ZSH="$HOME/.oh-my-zsh"
# CASE_SENSITIVE="true"
zstyle ':omz:update' mode auto      # update automatically without asking

COMPLETION_WAITING_DOTS="%F{blue}waiting...%f"
COMPLETION_WAITING_DOTS="true"
# DISABLE_UNTRACKED_FILES_DIRTY="true"
# ZSH_THEME="archcraft"
PROMPT=" %B%F{1}%1~ %F{blue} %f%b "

HIST_STAMPS="mm/dd/yyyy"

ZSH_CUSTOM="$HOME/.oh-my-zsh/custom"
plugins=(git z zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nvim'
else
  export EDITOR='vim'
fi

set -o vi

source ~/.zshrc-alias
source ~/.zshrc-func
