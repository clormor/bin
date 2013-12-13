#!/bin/bash

# description: initiates password-less ssh via RSA for the current user, on the current host, to a specified user on a remote machine.
#
# author: clormor (https://github.com/clormor)
#
# usage: passwordless-ssh.sh <remote user name> <remote host>
#

set -e

# process args
r_user=$1
r_host=$2

# validate args
if [ $# -ne 2 ]
then
   echo `basename $0` "<remote user> <remote host>"
   exit 1
fi

# generate RSA key if required
if [ ! -f ~/.ssh/id_rsa.pub ]
then
   echo "generating RSA keys for this user..."
   ssh-keygen -t rsa
fi

# copy ssh id to remote host
ssh-copy-id $1@$2

echo "passwordless ssh successfully enabled for $USER on $HOSTNAME to $r_user on $r_host"
