#!/bin/bash
###########################################################
# USERS GENERATOR
# Generate users using a random hash and password
#
# CWD must be the bin dir of ejabberd installation
#
# Notes:
#  apt-get install -y uuid-runtime
###########################################################
for i in {1..400}
do
    USER=$(uuidgen)
    PASS=$(uuidgen)
    ejabberdctl register $USER localhost $PASS
done
