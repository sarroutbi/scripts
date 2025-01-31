
alias unalias='functions -e'

############################################################################################
## Aliases

# ls
alias ll='ls -l'
alias l='ls -al'
alias la='ls -la'
alias ll='ls -l'
alias lh='ls -lh'
alias lt='d -lt'
alias lts='lt -s'

# cd
alias up='cd ..'
alias back='cd "$OLDPWD"'
alias cd..='cd ..'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'
alias .......='cd ../../../../../..'
# alias +='pushd .'
# alias -- -='popd'




# filesystem
alias mv="mv -v"
alias cp="cp -v"
alias rm='trsh'
alias rehash='hash -r'
alias cx='chmod +x'
alias c-x='chmod -x'
alias cls='clear'

# text
alias nano='nano -w'
alias n='nano'
alias s.='s .'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias grep='grep --color=auto'
alias rcat='tac'

# rgrep() {
#   expression=$1
#   shift

#   rcat "$@" | grep -Ei $expression
# }

# if which ag > /dev/null 2>&1
# then
#   alias ag='ag --pager "less -RSFXi"'
# else
#   alias ag='ack --pager "less -RSFXi"'
# fi

alias less='less -X -F -i'
alias diff='diff -u'

# media
alias o="open"
alias o.="open ."
alias a="audacious"
alias ae="a -e"
alias a2="a"
alias ch="chromium"

# net
# alias_all_as_sudo iptables netctl ufw dhcpcd nethogs bwm-ng
alias ssh='ssh -2'
alias scpfast='scp -c arcfour128'
alias sshfast='ssh -c arcfour128'
alias mosh='msh'
alias bmon='bwm-ng'
alias whois='whois -H'
alias geoip='geoiplookup'
alias geoip6='geoiplookup6'
alias iptraf='sudoifnotroot iptraf-ng'

# disks
# alias_all_as_sudo fdisk blkid
alias fatrace="sudoifnotroot fatrace | grep -v xfce4-terminal"
alias md='mdadm'
alias df='df -h'
alias df.='df .'
alias screen='screen -U'
alias dd='dcfldd'
alias lsblk='lsblk -o MODEL,SIZE,TYPE,NAME,MOUNTPOINT,LABEL,FSTYPE'
alias disks='lsblk'

# system
# alias_all_as_sudo sysdig swapped perf
alias dmesg='dmesg -T --color=always|less -S -R +\>'
alias dmesg-tail='\dmesg -T --color -w'
alias dstat-wide='dstat -tcyifd'
# alias off='sudoifnotroot shutdown -h now || sudoifnotroot systemctl poweroff'
# alias reboot='sudoifnotroot shutdown -r now || sudoifnotroot systemctl reboot'
alias off='shutdown -h now'
alias reboot='shutdown -r now'
alias sus='ssu'

# systemd
# alias_all_as_sudo systemctl journalctl
alias jc='journalctl'
alias jt='journalctl -f'
alias sys='systemctl'
alias j='journalctl'
alias iu='i --user'

# misc
alias dict='dictless'
alias chrome='google-chrome'
alias dmenu="dmenu -l 50"
alias resett="tput reset"
alias xmem='xrestop'
alias flash='crutziplayer'
alias rdp='xfreerdp'
alias gource='gource --user-image-dir ~/.cache/gravatars'
alias psx='pcsxr'
alias detach='bg; disown'
#alias dpkg='sudoifnotroot dpkg'
alias record-desktop="simplescreenrecorder"
alias b='chromium'

# archives
alias ax="aunpack"
alias ac="apack"
alias al="als"

# git
alias gs="git status"
alias gd="git diff"
alias ga="git add"
alias gl="git log --graph --stat"
alias gch="git checkout"
# alias g[[="git stash"
# alias g]]="git stash pop"
# alias g[]="git stash list; git stash show"
alias g+="git add"
alias gr="git remote -v"
alias gf="git fetch --prune"
alias fetch="gf"

alias gcs="gc --depth=1"

# ruby
alias r="ren"
alias be="bundle exec"
alias pad="padrino"
# alias cr='crystal'
alias rock='luarocks'

# python
alias py=python2

# # 64/32bit specific aliases
# case `uname -m` in
#   x86_64)
#     ;;
#   *)
#     ;;
# esac

# Things with literal arguments!
#alias math='noglob math'
#alias gfv='noglob gfv'
alias yd='youtube-dl --xattrs --no-mtime'

# arch
alias pacman='sudoifnotroot pacman'
alias pacs='\pacman -Ss'   # search for package
alias pacf='\pacman -Ql|grep' # which package contains this file?
alias pacq='\pacman -Q|grep'  # find a package
alias pacg='\pacman -Qg'   # show groups
alias pacu='pacman -Syu'  # update packages
alias pacd='pacman -Syuw' # only download updates (no install)
alias pacr='pacman -Rs'   # remove package (and unneeded dependencies)
alias pacrf='pacman -Rc'  # remove package (and force removal of dependencies)
alias pacpurge='pacman -Rns' # purge a package and all config files
alias pacuproot='pacman -Rsc' # remove package, dependencies, and dependants
alias y='yaourt'
alias abs='sudoifnotroot abs'
# alias pkgfile='sudoifnotroot pkgfile -r'
alias mp='makepkg -s'

# npm
alias ni="sudoifnotroot npm install -g"
# alias nl="npm list -g --color=always |& less -S"

alias reload='exec fish'


#
# Usage:
#   faketty <command> <args>
#
# (Almost works... There's just a newline issue)
#
#function faketty { script -qfc "$(printf "%q " "$@")"; }

######################################################################################################################

#
# magic cross-platform "open" command
#
# if [ "$OSTYPE" == "cygwin" ]; then
#   alias open='cygstart'
# elif [ -f /usr/bin/xdg-open ]; then
#   alias open='xdg-open "$@" 2>/dev/null'
# elif [ -f /usr/bin/exo-open ]; then
#   alias open='exo-open "$@" 2>/dev/null'
# elif [ -f /usr/bin/gnome-open ]; then
#   alias open='gnome-open "$@" 2>/dev/null'
# fi

# alias open='xdg-open "$@" 2>/dev/null'

# # function alias_all_as_sudo() {
#   for var in "$@"
#   do
#     alias $var="sudoifnotroot $var"
#   done
# }

# ## if CLICOLOR doesn't work, this can hard-wire color-ls
# if [ "$TERM" != "dumb" ]; then
#   #export LS_OPTIONS='--color=auto'
#   if which dircolors > /dev/null 2>&1
#   then
#     eval `dircolors -b`
#   fi
#   alias ls="ls --color=auto"
# fi

unalias rm
unalias dpkg

alias dl='cd ~/dl'
alias sd='cd ~/sd'
alias misc='cd ~/misc'

alias ai="apt install"
alias as="apt search"
alias ar="apt remove"
alias au="apt update && apt upgrade"
alias agdu="au"

alias agar="apt-get autoremove"

