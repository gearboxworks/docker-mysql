#!/bin/bash
# Created on 2020-03-14T17:04:00+1100, using template:mysql.sh.tmpl and json:gearbox.json

test -f /etc/gearbox/bin/colors.sh && . /etc/gearbox/bin/colors.sh

c_ok "Started."

c_ok "Installing packages."
APKBIN="$(which apk)"
if [ "${APKBIN}" != "" ]
then
	if [ -f /etc/gearbox/build/mysql.apks ]
	then
		APKS="$(cat /etc/gearbox/build/mysql.apks)"
		${APKBIN} update && ${APKBIN} add --no-cache ${APKS}; checkExit
	fi
fi

APTBIN="$(which apt-get)"
if [ "${APTBIN}" != "" ]
then
	if [ -f /etc/gearbox/build/mysql.apt ]
	then
		DEBS="$(cat /etc/gearbox/build/mysql.apt)"
		${APTBIN} update && ${APTBIN} install ${DEBS}; checkExit
	fi
fi


if [ -f /etc/gearbox/build/mysql.env ]
then
	. /etc/gearbox/build/mysql.env
fi

if [ ! -d /usr/local/bin ]
then
	mkdir -p /usr/local/bin; checkExit
fi

if [ ! -d /var/lib/mysql-files ]
then
	mkdir -p /var/lib/mysql-files && chown mysql:mysql /var/lib/mysql-files
fi

c_ok "Finished."
