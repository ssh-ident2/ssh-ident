#!/usr/bin/sh

## Python 3
#python3 -m pydoc './ssh-ident' >'./README'
#rm -rf '__pycache__'

## Python 2.7
python2 -m pydoc './ssh-ident' >'./README'
rm './ssh-identc'

## Process new README: trim trailing spaces, shorten file location
sed -i -e 's#[[:space:]]\+$##' -e "s#${PWD}/##" './README'
