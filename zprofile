#! /usr/bin/env zsh

f_green=$'%{\e[0;32m%}'
f_blue=$'%{\e[0;34m%}'
f_red=$'%{\e[0;31m%}'
f_brown=$'%{\e[0;33m%}'
f_cyan=$'%{\e[0;36m%}'
f_no_colour=$'%{\e[0m%}'
PS1="${f_blue}Shell${f_red}:${f_brown}%~ ${f_green}>: ${f_no_colour}"

# .aliasrc.d
for aliasrc_snipplet in ~/.aliasrc.d/S[0-9][0-9]*[^~]; do
	source $aliasrc_snipplet
done

# .zsh.d
for zshrc_snipplet in ~/.zsh.d/S[0-9][0-9]*[^~]; do
	source $zshrc_snipplet
done

export PYTHONPATH=$HOME/mylibs/lib/Python
export PYTHONSTARTUP=$HOME/.pythonstartup
#export LD_LIBRARY_PATH=.:$HOME/lib

#export TERM='xterm-color'
export EDITOR=vi
#export PAGER=more
export PAGER=most
export BLOCKSIZE=K

export LC_CTYPE=en_US.UTF-8
export LANG=en_US.UTF-8

PATH=.
PATH=$PATH:$HOME/tools/bin
PATH=$PATH:$HOME/bin
PATH=$PATH:/sbin:/usr/sbin
PATH=$PATH:/bin:/usr/bin
PATH=$PATH:/usr/X11R6/bin
PATH=$PATH:/usr/local/sbin:/usr/local/bin
export PATH

export U=$HOME
export u=$HOME

# OpenArena
export SDL_VIDEO_X11_DGAMOUSE=0

export CVSROOT=anoncvs@anoncvs.de.openbsd.org:/cvs

export AUTOCONF_VERSION=2.62
export AUTOMAKE_VERSION=1.9

# Java
export JAVA_HOME=/usr/local/jdk-1.7.0
export CLASSPATH=.:$JAVA_HOME/lib/tools.jar:$JAVA_HOME/lib/dt.jar
export PATH=$PATH:$JAVA_HOME/bin
export ANT_HOME=/usr/local/ant

# Clojure
export CLOJURE_HOME=$HOME/opt/clojure-1.2.0

# Scala
export SCALA_HOME=$HOME/opt/scala
export PATH=$PATH:$SCALA_HOME/bin

# Node.js
export PATH=$HOME/opt/node/bin:$PATH
