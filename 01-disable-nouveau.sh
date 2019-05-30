#!/bin/sh

sudo cp blacklist-nouveau.conf /etc/modprobe.d/
sudo update-initramfs -u
sudo reboot
