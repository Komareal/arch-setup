#!/bin/sh -eou

for dir in $(find -maxdepth 1 -type d ! -name ".*")
do
	cd "$dir" || exit
	sudo make clean install
	cd .. || exit
done
