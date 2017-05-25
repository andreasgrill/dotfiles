# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '~/.zshrc'

autoload -Uz compinit
compinit -i
# End of lines added by compinstall

#PATH="$HOME/Library/Python/2.7/bin:PATH"

if [[ -r ~/.local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh ]]; then
  export POWERLINE_HOME=~/.local/lib/python2.7/site-packages/powerline
elif [[ -r /usr/local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh ]]; then
  export POWERLINE_HOME=/usr/local/lib/python2.7/site-packages/powerline
elif [[ -r /usr/share/powerline/bindings/zsh/powerline.zsh ]]; then
  export POWERLINE_HOME=/usr/share/powerline
elif [[ -r ~/Library/Python/2.7/lib/python/site-packages/powerline/bindings/zsh/powerline.zsh ]]; then
  export POWERLINE_HOME=~/Library/Python/2.7/lib/python/site-packages/powerline
fi

#source "${POWERLINE_HOME}/bindings/zsh/powerline.zsh"
source "${HOME}/.zgen/zgen.zsh"


#POWERLEVEL9K_MODE='awesome-patched'
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir vcs)
#POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=()
POWERLEVEL9K_STATUS_VERBOSE=false
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_with_folder_marker"
POWERLEVEL9K_SHORTEN_DIR_LENGTH=0
POWERLEVEL9K_SHORTEN_DELIMITER=""
POWERLEVEL9K_SHORTEN_FOLDER_MARKER=(.git package.json build.gradle)

# if the init scipt doesn't exist
if ! zgen saved; then

  # specify plugins here
  zgen oh-my-zsh

  # load from omz
  zgen oh-my-zsh plugins/git
  zgen oh-my-zsh plugins/npm
  zgen oh-my-zsh plugins/ng
  zgen oh-my-zsh plugins/mvn
  zgen oh-my-zsh plugins/jira
  zgen oh-my-zsh plugins/history
  zgen oh-my-zsh plugins/gradle
  zgen oh-my-zsh plugins/git-flow
  zgen oh-my-zsh plugins/git-extras
  zgen oh-my-zsh plugins/docker
  zgen oh-my-zsh plugins/python
  zgen oh-my-zsh plugins/heroku
  zgen oh-my-zsh plugins/pip
  zgen oh-my-zsh plugins/lein
  zgen oh-my-zsh plugins/command-not-found
  zgen oh-my-zsh plugins/common-aliases
  zgen oh-my-zsh plugins/svn
  zgen oh-my-zsh plugins/z

  # load from other repos
  zgen load zsh-users/zsh-syntax-highlighting
  zgen load zsh-users/zsh-history-substring-search
  zgen load tarruda/zsh-autosuggestions
  zgen load zsh-users/zsh-completions src

  # theme
  #zgen oh-my-zsh themes/agnoster
  
  zgen load bhilburn/powerlevel9k powerlevel9k

  #zgen load tylerreckart/hyperzsh
  #zgen load olivierverdier/zsh-git-prompt

  # generate the init script from plugins above
  zgen save
fi


# Git Prompts

# Setup suggestions
# zle-line-init() {
#     zle autosuggest-start
# }
# zle -N zle-line-init

# bind UP and DOWN arrow keys
#zmodload zsh/terminfo
#bindkey "$terminfo[kcuu1]" history-substring-search-up
#bindkey "$terminfo[kcud1]" history-substring-search-down


# Automatically list directory contents on `cd`.
#auto-ls () { ls; }
#chpwd_functions=( auto-ls $chpwd_functions )

### Added by the Heroku Toolbelt
#export PATH="/usr/local/heroku/bin:$PATH"

export EDITOR=vi
export DEFAULT_USER="$(whoami)"

# Prefer brew binaries over system binaries
export PATH="/usr/local/bin:$PATH"

# Oliver Verdier Prompt
#PROMPT='%~%b$(git_super_status) %# '

# Tyler Reckart Prompt
#PROMPT='$(_user_host)$(_python_venv)%{$fg[cyan]%}%c $(git_prompt_info)%{$reset_color%}$(git_prompt_short_sha)%{$fg[magenta]%}$(_git_time_since_commit)$(git_prompt_status)${_return_status}➜ '

alias preview="qlmanage -p" 
