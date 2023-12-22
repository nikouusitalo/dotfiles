#!/bin/bash
sudo apt-get update && sudo apt-get upgrade -y
aptDepends=(
    build-essential
    cmake
    git
    unzip
    ninja-build 
    gettext 
    curl
    pip
    pipx
    w3m
    )
missingDeps=()


for dep in "${aptDepends[@]}"; do
    if command; then
    echo
  else
    
  fi  
done
#istall deb
#tarkista onko sovellus asennettu
#jos on skip
#jos ei asenna sovellus


#loop dotfiles
#loopaaa kansio ja tee simlink niistä kansioita ja laita .config paikkaan
