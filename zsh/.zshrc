export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="agnoster"

COMPLETION_WAITING_DOTS="true"

plugins=(git fasd osx)

source $ZSH/oh-my-zsh.sh

# ls aliases. I prefer the gls colors, so if on mac, change ls to gls
if [[ "$(uname)" == "Darwin" ]]; then 
    alias ls='gls -F --color'
else
    alias ls='ls -F --color'
fi


alias ll="ls -alh"
alias lls='ls -lh'

# Other sensible system aliases
alias mkdir="mkdir -p"
alias mv="mv -i"
alias v="vim"

# git aliases
alias gs="git status -sb"
alias gst="git status"
alias ga="git add"
alias gaa="git add --all"
alias gc="git commit"
alias gcr="git config --get remote.origin.url"

# Editing and sourcing vimrc and zshrc files
alias evrc="vim ~/.vimrc"
alias ezrc="vim ~/.zshrc"
alias svrc="source ~/.vimrc"
alias szrc="source ~/.zshrc"

# virtual env aliases
alias conde='conda deactivate'
alias env-export='conda env export --no-builds | grep -v "prefix" > environment.yml'

# Project specific alias
#alias cdri='cd ~/gitrepos/ri_covid'
#alias cdnb='cd ~/gitrepos/ri_covid/notebooks'
#alias cari='conda activate ri_covid'


# for tldr bash program
export PATH=$PATH:~/bin
complete -W "$(tldr 2>/dev/null --list)" tldr
export PATH="/usr/local/sbin:$PATH"


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$("$HOME/opt/anaconda3/bin/conda" 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "$HOME/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "$HOME/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="$HOME/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
