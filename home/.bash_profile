export PATH="/usr/local/sbin:$PATH"

alias ll="ls -lG"
alias la="ls -laG"

if [[ -r ~/.local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh ]]; then
  export POWERLINE_HOME=~/.local/lib/python2.7/site-packages/powerline
elif [[ -r /usr/local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh ]]; then
  export POWERLINE_HOME=/usr/local/lib/python2.7/site-packages/powerline
elif [[ -r /usr/share/powerline/bindings/zsh/powerline.zsh ]]; then
  export POWERLINE_HOME=/usr/share/powerline
elif [[ -r ~/Library/Python/2.7/lib/python/site-packages/powerline/bindings/zsh/powerline.zsh ]]; then
  export POWERLINE_HOME=~/Library/Python/2.7/lib/python/site-packages/powerline
fi

source "/Users/$USER/.customrc"
