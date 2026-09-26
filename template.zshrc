typeset -U path
path+=("$HOME/go/bin")

export ZSH="$HOME/.oh-my-zsh"
export ZSH_CUSTOM="$HOME/.config/oh-my-zsh"
ZSH_THEME="dotfiles"
HOMEBREW_PREFIX=$(brew --prefix)
fpath=("$HOMEBREW_PREFIX/share/zsh-completions" $fpath)

plugins=(git sudo history-substring-search zoxide fzf zsh-autosuggestions zsh-syntax-highlighting)

source "$ZSH/oh-my-zsh.sh"

alias n='nvim'
