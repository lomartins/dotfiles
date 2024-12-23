HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=1000
setopt SHARE_HISTORY

# completion
autoload -Uz compinit
compinit

ZPLUGINDIR=${ZPLUGINDIR:-${ZDOTDIR:-$HOME/.config/zsh}/plugins}

# get zsh_unplugged and store it with your other plugins
if [[ ! -d $ZPLUGINDIR/zsh_unplugged ]]; then
  git clone --quiet https://github.com/mattmc3/zsh_unplugged $ZPLUGINDIR/zsh_unplugged
fi
source $ZPLUGINDIR/zsh_unplugged/zsh_unplugged.zsh


repos=(
  # plugins that you want loaded first

  # other plugins
  zsh-users/zsh-completions
  # ...

  # plugins you want loaded last
  zsh-users/zsh-syntax-highlighting
  zsh-users/zsh-history-substring-search
  zsh-users/zsh-autosuggestions
)

plugin-load $repos

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:/$HOME/.local/bin:$PATH


alias ls='lsd --oneline'
alias l='ls -lFh'          #size,show type,human readable
alias la='ls -lAF'        #long list,show almost all,show type,human readable
alias lr='ls -tRF'        #sorted by date,recursive,show type,human readable
alias lt='ls -ltF'        #long list,sorted by date,show type,human readable
alias ll='ls -l'           #long list
alias ldot='ls -ld .*'
alias lS='ls -1FSsh'
alias lart='ls -1Fcart'
alias lrt='ls -1Fcrt'
alias v='nvim'
alias ranger='ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'


eval `dircolors`
zstyle ':completion:*' list-colors “${(s.:.)LS_COLORS}”
zstyle ':completion:*' menu select

source ~/.zkbd/$TERM-$DISPLAY
bindkey -d
[[ -n ${key[Left]} ]] && bindkey "${key[Left]}" backward-char
[[ -n ${key[Right]} ]] && bindkey "${key[Right]}" forward-char
[[ -n ${key[Home]} ]] && bindkey ${key[Home]} beginning-of-line
[[ -n ${key[End]} ]] && bindkey ${key[End]} end-of-line
[[ -n ${key[Delete]} ]] && bindkey ${key[Delete]} delete-char
bindkey "^H" backward-kill-word
# bindkey -e


if which oh-my-posh > /dev/null; then
    eval "$(oh-my-posh init zsh --config $HOME/.config/zsh/themes/oh-my-posh/dracula.omp.json)"
fi

