#!/bin/bash
format () {
	if [ "$1" == "--format" ]
	then
		stylua lua/*.lua
		stylua lua/csharpls_extended/*.lua
	elif [ "$1" == "--check" ]; then
		luacheck lua/*
		luacheck lua/csharpls_extended/*.lua
	else 
		echo "--format       format the files"
		echo "--check        check the files"
	fi
}
format $1
