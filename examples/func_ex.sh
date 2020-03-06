#! /bin/bash
# Example Function, Creates a directory and enters it
# Use source 1.sh to load the script in the shell
# Calling the function: 'mcd dirname'
mcd()
{
	mkdir "$1"
	cd "$1"
}