export ZSH=$HOME/.oh-my-zsh ZSH_THEME="agnoster"
alias com="sh /usr/local/bin/com"
alias theone="clear && cmatrix"
alias e="exit"
alias python=python3
alias ros="cd ~/catkin_ws/ && bash"
alias q="exit"
alias :q="exit"
alias mkdir="mkdir -p"
alias ls='ls --color=auto'
export PATH="/usr/local/sbin:$PATH"
plugins=(
        archlinux
        git
        history-substring-search
        colored-man-pages
        zsh-autosuggestions
        zsh-completions
        zsh-syntax-highlighting
    )
    autoload -U compinit && compinit
    zstyle ':completion:*' auto-description 'specify: %d'
    zstyle ':completion:*' completer _expand _complete _correct _approximate
    zstyle ':completion:*' format 'Completing %d'
    zstyle ':completion:*' group-name ''
    zstyle ':completion:*' menu select=2
    eval "$(dircolors -b)"
    zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
    zstyle ':completion:*' list-colors ''
    zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
    zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
    zstyle ':completion:*' menu select=long
    zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
    zstyle ':completion:*' use-compctl false
    zstyle ':completion:*' verbose true

    zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
    zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'
    CASE_SENSITIVE="true"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
source $ZSH/oh-my-zsh.sh
alias keybind="cat ~/.config/i3/config | ack bindsym"
