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
# ANDRE FORBEDRINGER
# ============================================
# Auto-complete case-insensitive
bind 'set completion-ignore-case on'

# Fargede ls-output (hvis supported)
if [ -x /usr/bin/dircolors ]; then
    eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
fi
