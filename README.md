
# My Dotfiles

Configure unix based computer with:
- zsh (shell)
- ohmyzsh (plugin manager)
- powerlevel10k (theme for zsh)

## Quick Start



1. [Install](https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH) zsh

2. [Install](https://github.com/ohmyzsh/ohmyzsh) oh-my-zsh

3. [Install](https://github.com/romkatv/powerlevel10k?tab=readme-ov-file#oh-my-zsh) power level 10k using oh-my-zsh

4. Go to home directory and erase `.zshrc`, `p10k.zsh` (These are created on previous installs, we are gonna replace them)

5. Install GNU Stow with your OS package manager

6. Clone this repo to your home directory

7. Change directory into the cloned repository

8. Run `stow .` to create symbolic links for each dotfile and they will appear in the home directory
9. Re-open the terminal and you're ready!