#!/bin/sh
files="$(ls -1 | grep -v README | grep -v packages | grep -v personal | xargs)"

for conf in $files
do
	echo "[+] installing $conf"
	cp -r $conf ~/.$conf
done
