#!/bin/bash
echo -e "\n===== INSTALLING COMMON UTILITIES ====="
apt-get update
apt-get --assume-yes install vim tmux pdsh tree axel htop ctags cscope cmake clang gnuplot sysstat pcp
# Maven
echo -e "\n===== INSTALLING MAVEN ====="
apt-get --assume-yes install maven
# Python packages
echo -e "\n===== INSTALLING PYTHON PACKAGES ====="
apt-get --assume-yes install python-numpy python-pandas python-matplotlib
