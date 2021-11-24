#!/bin/bash
if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi
grub-mkconfig -o /boot/grub/grub.cfg
