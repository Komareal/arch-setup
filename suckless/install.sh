#!/bin/bash

for dir in $(find -maxdepth 1 -type d ! -name ".*")
do
	cd "$dir" || exit
  git checkout master
	sudo make clean install
	cd .. || exit
done
