#!/bin/sh

NAME=statov
SRCDIR=statov

GUNICORN=/usr/bin/gunicorn_django
HOMEDIR=~/web

VIRTUALENV=${HOMEDIR}/env
PROJECTDIR=${HOMEDIR}/${NAME}
SOCKFILE=/tmp/${NAME}.sock
MANAGE=${PROJECTDIR}/manage.py

. ${VIRTUALENV}/bin/activate
gunicorn myproject.wsgi:application -b 0.0.0.0:8989 
