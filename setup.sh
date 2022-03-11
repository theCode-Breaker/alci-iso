#!/bin/sh
modprobe loop
pacman -S --noconfirm --needed artools iso-profiles archlinux-keyring
pacman -S --noconfirm --needed virtualbox virtualbox-host-dkms
modprobe vboxdrv
ln -sf "$(pwd)/artixiso/artools-workspace" ./
mkdir ./.config
ln -sf "$(pwd)/config/artools" ./config
