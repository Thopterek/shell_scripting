#!/bin/sh

. ./lib.sh

AC=$#
AV=$@
prog_start
EXIT=$?
if [ "$EXIT" -ne "0" ]; then
	exit 1
fi
