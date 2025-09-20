case "$ZSH_PROFILE" in
  work)
echo "work profile!"
    source ~/.zshrc.work
    ;;
  personal)
echo "personal profile!"
    source ~/.zshrc.personal
    ;;
  *)
    echo "Unknown ZSH_PROFILE: $ZSH_PROFILE"
    ;;
esac


# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/mjahn/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# use starship
eval "$(starship init zsh)"
