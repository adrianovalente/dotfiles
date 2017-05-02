alias ]='auto_mfa; nodemon -e '"'"'.js|.ejs'"'"' app.js' 
alias gap='git add -p'

alias spn='sudo pkill node'
alias spm='sudo pkill mongo'
alias spr='sudo pkill redis'
alias spa='spn; spm; spr'
alias s='gst'

alias v='vim'
alias r='git fetch origin; git reset --hard origin/dev'
alias desktop='cd ~/Desktop'
alias downloads='cd ~/Downloads'
alias pp='g push origin $(current_branch)'
alias PP='pp -f'
alias gh="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all"
alias cl='clear'
