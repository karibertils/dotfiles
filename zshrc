autoload -Uz compinit
compinit

sed -i 's/compinit\ -d/compinit\ -u\ -d/g' ~/.antigen/init.zsh

source <(kubectl completion zsh)
source <(helm completion zsh)

export ZSH_DISABLE_COMPFIX="true"
export EDITOR=vim
export PATH="/snap/bin:~/.npm-global/bin:~/.local/bin:$PATH"
export KUBECONFIG=~/.kube/config
export DATASTORE_TYPE=kubernetes

source ~/antigen.zsh

antigen use oh-my-zsh

antigen bundle colorize
antigen bundle git
#antigen bundle command-not-found
antigen bundle yarn
#antigen bundle docker-compose
antigen bundle zsh-completions
antigen bundle zsh-users/zsh-autosuggestions

# Load the theme.
antigen theme afowler

# Tell Antigen that you're done.
antigen apply

alias dinfo="sh ~/scripts/docker_ips.sh"
alias chrome="google-chrome --remote-debugging-port=9222"
alias babel-node="babel-node --extensions .ts,.tsx,.js,.jsx"
alias k="kubectl"
alias backup-kube-cluster="kubectl cluster-info dump --output-directory=dump --all-namespaces"
alias clip="xclip -sel cli <"
alias killpod="kubectl delete pod --force --grace-period=0"

fpath=(~/.zsh-completions $fpath)

setopt NO_HUP

bindkey -v

#bindkey '^P' up-history
#bindkey '^N' down-history
#bindkey '^?' backward-delete-char
#bindkey '^h' backward-delete-char
#bindkey '^w' backward-kill-word
#bindkey '^r' history-incremental-search-backward

#function zle-line-init zle-keymap-select {
#    VIM_PROMPT="%{$fg_bold[yellow]%} [% NORMAL]%  %{$reset_color%}"
#    RPS1="${${KEYMAP/vicmd/$VIM_PROMPT}/(main|viins)/}$(git_custom_status) $EPS1"
#    zle reset-prompt
#}

#zle -N zle-line-init
#zle -N zle-keymap-select
#export KEYTIMEOUT=1
