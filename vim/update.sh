#!/bin/bash

schemes=`ls ~/.vim/colorschemes | awk '{print $1}'`

for scheme in $schemes; do
	cd ~/.vim/colorschemes/$scheme
	git pull > /dev/null 2>&1
done
