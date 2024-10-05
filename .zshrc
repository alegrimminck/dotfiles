export DOTZSH=$HOME/dotfiles/zsh/

# oh my zsh
[[ -e $DOTZSH/oh_my_zsh.sh ]] && source $DOTZSH/oh_my_zsh.sh

# import aliases
[[ -e $DOTZSH/aliases.sh ]] && source $DOTZSH/aliases.sh

# source power level 10k configuration
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh