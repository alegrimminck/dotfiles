# reload zsh
alias resetzsh="source ~/.zshrc && echo 'zsh succesfully restarted'"

# create random temporary folder and move to it
alias temp="cd $(mktemp -d)"

# erase local branches merged in master or release
alias erase_merged_branches='git branch --merged | egrep -v "(^\*|master|release)" | xargs git branch -d'