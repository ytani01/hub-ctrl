#!/bin/sh

MYNAME=`basename $0`

BINDIR=${HOME}/bin

CMD="${BINDIR}/hub-ctrl"
OPT1="-h 0 -P 2 -p"
OPT_SW="1"

if [ "$1" = "" ]; then
	echo "usage: ${MYNAME} on|off"
	exit 1
fi

if [ `echo $1 | tr '[:upper:]' '[:lower:]'` = "off" ]; then
	OPT_SW="0"
fi

CMDLINE="sudo ${CMD} ${OPT1} ${OPT_SW}"
echo ${CMDLINE}
exec ${CMDLINE}
