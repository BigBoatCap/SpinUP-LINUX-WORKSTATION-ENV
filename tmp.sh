# Git SSL DO NOT CHECK
git config --global core.fileMode false
git config --global http.sslVerify false

shopt -s dotglob nullglob
#### C U S T O M   A L I A S E S ####
#alias ls=\"sudo ls -lah --color=always --classify\"
alias lsd=\"sudo ls -lahd --color=auto --classify\"
alias netstat=\"sudo netstat -pan --ip -c\"
alias htop=\"sudo htop\"
alias update=\"sudo apt update\; apt list \-\-upgradable\"
alias upgrade=\"sudo apt upgrade \-y\"
alias install=\"sudo apt install\"
alias remove=\"sudo apt remove\"
alias search=\"apt-cache search\"
alias ps=\"sudo ps auxf \| less\"
alias dig=\"dig \+short any\"

alias vm=\"ssh -p2222 root@127.0.0.1\"
alias vmoff=\"ssh -p2222 root@127.0.0.1 poweroff\"
alias bro=\"ssh -p2222 brokenport@127.0.0.1\"
alias bestp=\"ssh root@192.168.1.101\"

alias rip-breaks=\"screen -d -m streamripper http://online.radiorecord.ru:8102/brks_320 -d ~/Music/ -L ~/Music/Breaks.pls -M 1000 -u \\"USER AGENT\\" -T\"

export EDITOR=\"vim\"
