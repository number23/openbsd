export XMODIFIERS="@im=SCIM"
export XIM=scim
export XIM_PROGRAM=scim
export GTK_IM_MODULE=scim
export QT_IM_MODULE=xim
scim -d&
exec gnome-session

#export XIM_PROGRAM=fcitx
#export XIM=fcitx
#export XMODIFIERS="@im=fcitx"
#export QT_IM_MODULE=XIM
#export GTK_IM_MODULE=XIM
#exec fcitx&

#exec dbus-launch gnome-session
#exec wmmixer -w &
#exec wmCalClock &
#exec wmnet --device=re0 -l -n -w &
#exec wmmon &
#exec wmmon -i&
#exec wmmon -s&

#exec fluxbox
#exec enlightenment_start
#exec startkde
