#!/bin/sh
files="$(ls -1 | xargs)"

for conf in $files
do
	echo "[+] installing $conf"
	cp -r $conf ~/.$conf
done
