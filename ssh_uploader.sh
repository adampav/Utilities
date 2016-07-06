#!/bin/bash

# verify that user entered 3 inputs
if [ $# -ne 3 ]; then
	echo -e $0:"\t"usage: ./ssh_uploader.sh \<username\> \<server\> \<pub_key\>
	exit 1
fi

username=$1
server=$2
pub_key=$3

ssh $1@$2 "echo \"`cat $3`\" >> ~/.ssh/authorized_keys"
