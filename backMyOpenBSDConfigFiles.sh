#!/bin/sh
cd $HOME/hgroot/bitbucket.org/openbsd

cp -rf $HOME/.zprofile zprofile
cp -rf $HOME/.aliasrc.d/S10_general aliasrc.S10_general

cp -rf $HOME/.xinitrc xinitrc
cp -rf $HOME/.xserverrc xserverrc
cp -rf $HOME/.Xdefaults Xdefaults

# system
cp -rf /etc/sysctl.conf sysctl.conf
