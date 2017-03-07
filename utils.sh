function push_simple(){
  curDir=${PWD##*/};
  BRANCH=$(this_branch);
  echo "Pushing $curDir to "$BRANCH;
  if [ $1 == "-f" ]; then
    git push origin $BRANCH -f
  else
    git push origin $BRANCH
  fi
}

function pull_simple(){
  curDir=${PWD##*/}
  BRANCH=$(this_branch)
  echo "Pulling $curDir from "$BRANCH
  git pull origin $BRANCH
}

function update_scripts(){
  sh $HOME/.dotfiles/update-dotfiles.sh
}

alias g='git'
alias gst='git status'
alias gb='git branch'
alias gco='git checkout'
alias glog='git log --pretty --oneline --graph'
alias ]='auto_mfa; nodemon -e '"'"'.js|.ejs'"'"' app.js' 
alias gap='git add -p'
alias gc='git commit'
alias ga='git add'
alias spn='sudo pkill node'
alias spm='sudo pkill mongo'
alias spr='sudo pkill redis'
alias xx='sudo pkill GitX'
alias sp='sudo pkill'
alias spa='spn; spm; spr'
alias t='spa; tt'
alias r='git fetch origin; git reset --hard origin/dev'
alias ss='source ~/.bash_custom'
alias rs='update_scripts'
alias desktop='cd ~/Desktop'
alias downloads='cd ~/Downloads'
alias show='g show head'
alias pp='push_simple -n'
alias PP='push_simple -f'
alias uu='pull_simple'
alias gh="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all"
alias next='spotify next'
alias prev='spotify prev'
alias sf='spotify'
alias cl='clear'
