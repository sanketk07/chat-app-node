#!/bin/sh
# @Author: ps158
# @Date:   2017-04-24T13:08:28+10:00
# @Last modified by:   ps158
# @Last modified time: 2017-04-24T13:41:13+10:00

mkdir $1
git init

cd $1

wget https://gist.github.com/wolfeidau/8748317/raw/172a6adb79777676a8815da5719ef659fb66a35b/Makefile
wget https://raw.githubusercontent.com/github/gitignore/master/Node.gitignore -O .gitignore

make skel

# git stuff if you want it
read -p "Would you like to make a repo for this project on github?" -n 1 -r
echo

if [[ ! $REPLY =~ ^[Yy]$ ]]
then
    echo "No worries, enjoy."
    #[[ "$0" = "$BASH_SOURCE" ]] && exit 1 || return 1
else
    echo "Creating your git repo..."

    hub create

    git add .
    git commit -a 'Initial release'
fi

npm init