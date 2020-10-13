#!/usr/bin/env bash
# Run me if we are Linux Ubuntu:
uname -a| grep Ubuntu
if [ $? == "0" ]; then
    echo " PROCEED ? Y\/y\\N\/n DUMMY MSG "
    sudo grep dragutsan /etc/sudoers
    if [ ! $? == "0" ]; then
	echo "
dragutsan Station = (root) NOPASSWD: /usr/bin/mc
dragutsan Station = (root) NOPASSWD: /bin/cat
dragutsan Station = (root) NOPASSWD: /bin/ls
dragutsan Station = (root) NOPASSWD: /usr/bin/vim
dragutsan Station = (root) NOPASSWD: /usr/bin/htop
dragutsan Station = (root) NOPASSWD: /usr/bin/apt
dragutsan Station = (root) NOPASSWD: /usr/bin/apt-get
dragutsan Station = (root) NOPASSWD: /sbin/reboot
dragutsan Station = (root) NOPASSWD: /bin/ps
dragutsan Station = (root) NOPASSWD: /usr/bin/nmap 
dragutsan Station = (root) NOPASSWD: /usr/sbin/pm-hibernate
" | sudo tee -a /etc/sudoers
    fi

    grep "dotglob" ~dragutsan/.bashrc
    if [ ! $? == "0" ]; then
	echo "


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

" | tee -a ~dragutsan/.bashrc
        . ~dragutsan/.bashrc
    fi

    sudo apt update
    sudo apt list --upgradable
    sudo apt upgrade -y
    sudo apt install -y policycoreutils python3-pip nfs-common mlocate bash-completion net-tools dnsutils telnet whois screen mc lsof strace tcpdump vim git htop atop sysstat psmisc nmon nload iftop iptraf-ng wget curl unzip
    echo "we are done"
fi
