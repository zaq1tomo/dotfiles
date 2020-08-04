# alias
source ~/.alias

# git
autoload -Uz compinit && compinit
source ~/.git-prompt.sh

# color
BLACK="%F{0}"
RED="%F{1}"
GREEN="%F{2}"
YELLOW="%F{3}"
BLUE="%F{4}"
MAGENTA="%F{5}"
CYAN="%F{6}"
WHITE="%F{7}"
OFF="%f"

export LANG=en_US.UTF-8
export CLICOLOR=1
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/git/bin:$PATH"

# prompt
setopt prompt_subst
PS1='$CYAN%n:%~$YELLOW$(__git_ps1 " (%s)")
$RED%# $OFF'

# history
setopt hist_ignore_dups
HISTFILE=~/.zsh_history
HISTSIZE=9999
SAVEHIST=9999

function search_reposiotry() {
    dir=$(ghq list --full-path | peco); cd $dir
	zle reset-prompt
}
zle -N search_reposiotry
bindkey '^R' search_reposiotry

function search_history() {
	BUFFER=`history -n 1 | tail -r  | awk '!a[$0]++' | peco`
	CURSOR=$#BUFFER
	zle reset-prompt
}
zle -N search_history
bindkey '^H' search_history

# direnv
eval "$(direnv hook zsh)"

# go
export GOPATH="$HOME/Develop"
export PATH="$GOPATH/bin:$PATH"

# node
export PATH="$HOME/.npm-global/bin:$PATH"

# flutter
export PATH="$HOME/Develop/flutter/bin:$PATH"

# gcp
# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/zaq1tomo/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/zaq1tomo/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/zaq1tomo/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/zaq1tomo/google-cloud-sdk/completion.zsh.inc'; fi
