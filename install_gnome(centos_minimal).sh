#!/bin/sh

yum groupinstall -y "X Window System"

yum groupinstall -y "Internet Browser"

yum install -y gnome-classic-session gnome-terminal nautilus-open-terminal control-center liberation-mono-fonts

systemctl stop firewalld

systemctl disable firewalld

ln -sf /lib/systemd/system/graphical.target /etc/systemd/system/default.target
