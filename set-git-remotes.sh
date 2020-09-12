#!/usr/bin/env sh

git remote remove 'origin'
git remote remove 'applied'
git remote add 'origin' 'https://git.suckless.org/st'
git remote add 'applied' 'https://github.com/aryailia/st'
#git branch --set-upstream-to="applied/applied"
