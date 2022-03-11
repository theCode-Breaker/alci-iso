#!/bin/sh
modprobe loop
pacman -S --noconfirm --needed artools iso-profiles
pacman -S --noconfirm --needed virtualbox virtualbox-host-dkms
modprobe vboxdrv
ln -sf "$(pwd)/artixiso/artools-workspace" ~/
ln -sf "$(pwd)/config/artools" ~/.config/
