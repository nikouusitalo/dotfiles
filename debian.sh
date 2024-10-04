#!/bin/bash

# Read the list of packages from the file
mapfile -t packages < debian-packeges.txt


# Install the packages
sudo apt-get install "${packages[@]}"

