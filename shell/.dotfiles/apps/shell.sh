alias cat=bat
alias clipboard="pbcopy"
alias cls='printf "\ec\e[3J"'
alias containers="cd $HOME/my.containers"
alias dotdir="cd $HOME/my.dotfiles"
alias dotfiles="code $HOME/my.dotfiles"
alias grep="grep --color=auto --exclude-dir={.bzr,CVS,.git,.hg,.svn,.idea,.tox,.idea}"
alias hobbies="cd $HOME/my.hobbies"
alias learn="cd $HOME/my.learning"
alias l="ls"
alias ls="ls -l --color"
alias lsa="ls -a"
alias notes="code $HOME/my.notes"
alias projects="cd $HOME/my.projects"
alias reload="source $HOME/.zshrc"
alias vars="env | sort"


search(){
  local directory="${2:-.}"
  grep -n -R $1 "$directory"
}

trash(){
  folder_current="$(pwd)"
  folder_date="$(date +'%Y-%b-%d-%H-%M')"
  folder="$folder_current/$folder_date"
  destination="$HOME/.trash$folder"
  mkdir -p $destination
  echo "Trashing files to: $destination"
  mv "$@" $destination
}
