export PATH=/opt/local/bin:/usr/local/bin:~/bin:$PATH
export MANPATH=/opt/local/share/man:$MANPATH
export JAVA_HOME=/Library/Java/Home
export VIM_APP_DIR=/Applications/MacVim/
export CLICOLOR=1 
export LSCOLORS=ExFxCxDxBxegedabagacad
export EDITOR='vim'

alias slice='ssh drew@drewolson.org'
alias sbcl='sbcl --noinform'
alias sd='screen -x drew'

parse_git_branch() { 
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/' 
} 

PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\[\033[01;32m\]$(parse_git_branch)\[\033[00m\]\$ '

if [ -f /opt/local/etc/bash_completion ]; then
    source /opt/local/etc/bash_completion
fi

if [ -f /opt/local/share/doc/git-core/contrib/completion/git-completion.bash ]; then
    source /opt/local/share/doc/git-core/contrib/completion/git-completion.bash
fi
