export ZSH=$HOME/.oh-my-zsh
export TERM=xterm-256color
#ZSH_THEME="powerlevel9k/powerlevel9k"
ZSH_THEME=powerlevel10k/powerlevel10k
alias com="sh /usr/local/bin/com | lolcat"
alias theone="clear && cmatrix"
alias e="exit"
alias python=python3
alias q="exit"
alias :q="exit"
alias mkdir="mkdir -p"
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
# source /usr/share/zsh-theme-powerlevel9k/powerlevel9k.zsh-theme
bindkey -v
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs )
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(vi_mode root_indicator background_jobs time)
alias ls='ls -F --color=auto'
alias cleanup='sudo pacman -Rsn  \$(pacman -Qdtq)'
POWERLEVEL9K_HOME_ICON=' '
POWERLEVEL9K_ETC_ICON='⚙'
POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
# POWERLEVEL9K_SHORTEN_DELIMITER=""
# POWERLEVEL9K_SHORTEN_STRATEGY="truncate_from_right"
# echo -e "                   -\`"
# echo -e "                  .o+\`"
# echo -e "                 \`ooo/"
# echo -e "                \`+oooo:"
# echo -e "               \`+oooooo:"
# echo -e "               -+oooooo+:"
# echo -e "             \`/:-:++oooo+:"
# echo -e "            \`/++++/+++++++:"
# echo -e "           \`/++++++++++++++:"
# echo -e "          \`/+++ooooooooooooo/\`"
# echo -e "         ./ooosssso++osssssso+\`"
# echo -e "        .oossssso-\`\`\`\`/ossssss+\`"
# echo -e "       -osssssso.      :ssssssso."
# echo -e "      :osssssss/        osssso+++."
# echo -e "     /ossssssss/        +ssssooo/-"
# echo -e "   \`/ossssso+/:-        -:/+osssso+-"
# echo -e "  \`+sso+:-\`                 \`.-/+oso:"
# echo -e " \`++:.                           \`-/+/"
# echo -e " .\`                                 \`"
cat ~/.config/logo
