#!/bin/sh
cd $HOME/hgroot/bitbucket.org/openbsd

cp -rf $HOME/.zprofile zprofile
rm -rf zsh.d
cp -rf $HOME/.zsh.d zsh.d
cp -rf $HOME/.aliasrc.d/S10_general aliasrc.S10_general

cp -rf $HOME/.xinitrc xinitrc
cp -rf $HOME/.xserverrc xserverrc
cp -rf $HOME/.Xdefaults Xdefaults

# system
cp -rf /etc/sysctl.conf sysctl.conf
cp -rf /etc/rc.conf.local rc.conf.local
cp -rf /etc/rc.local rc.local
cp -rf /etc/rc.securelevel rc.securelevel
