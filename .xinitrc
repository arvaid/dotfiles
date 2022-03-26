#!/bin/sh

#. ~/.profile

[ -f ~/.Xresources ] && xrdb ~/.Xresources 
[ -f ~/.xprofile ] && . ~/.xprofile

exec dbus-launch i3

