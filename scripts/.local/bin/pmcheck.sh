#!/bin/sh

distro="$(cat /etc/os-release | grep ^ID= | cut -c 4-)"
case "$distro" in
    fedora) alias i="sudo dnf install " && alias s="dnf search ";;
    ubuntu) alias i="sudo apt install " && alias s="apt search ";;
esac

