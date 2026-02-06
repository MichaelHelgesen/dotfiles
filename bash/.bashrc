#Mikkes .bashrc
# Personlige aliaser og konfigurasjon

# ============================================
# ALIASER - Navigasjon
# ============================================
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../../"
alias ~="cd ~"

#ls-varianter
alias ll="ls -lah"
alias la="ls -A"
alias l="ls -CF"

# ============================================
# ALIASER - Git
# ============================================
alias gs='git status'
alias ga='git add'
alias gc='git commit -m'
alias gp='git push'
alias gl='git log --oneline --graph --decorate'
alias gd='git diff'

# ============================================
# BASH COMPLETION
# ============================================
# Smart tab-completion for kommandoer
if [ -f /etc/bash_completion ]; then
    source /etc/bash_completion
fi

# Case-insensitive tab-completion
bind 'set completion-ignore-case on'

# ============================================
# ANDRE FORBEDRINGER
# ============================================
# Fargede ls-output (hvis supported)
if [ -x /usr/bin/dircolors ]; then
    eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
fi

# ============================================
# PROMPT
# ============================================
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\[\033[33m\]$(parse_git_branch)\[\033[00m\]\$ '

# ============================================
# HISTORIKK
# ============================================
# Historikk
HISTSIZE=10000
HISTFILESIZE=20000
HISTCONTROL=ignoreboth
shopt -s histappend
