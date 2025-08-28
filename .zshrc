export DOTZSH=$HOME/dotfiles/zsh/

# oh my zsh source
[[ -e $DOTZSH/oh_my_zsh.sh ]] && source $DOTZSH/oh_my_zsh.sh

# aliases source
[[ -e $DOTZSH/aliases.sh ]] && source $DOTZSH/aliases.sh

# power level 10k config source
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# help source
[[ -e $DOTZSH/help.sh ]] && source $DOTZSH/help.sh

# packages
[[ -e $DOTZSH/packages.sh ]] && source $DOTZSH/packages.sh
