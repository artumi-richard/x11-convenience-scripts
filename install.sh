#!/bin/bash
pwd=$(pwd)
if [ ! -d ~/bin ] ; then
	echo "Making ~/bin directory"
	mkdir ~/bin
fi

for i in `find . -name '*.sh' -not -name 'install.sh'` ; do
	name=$(basename $i)
	echo -n "Installing $name "
	if [ ! -h ~/bin/$name ] ; then
		ln -s $pwd/$name ~/bin/
		echo "Installed"
	else
		echo "Already installed"
	fi
done
