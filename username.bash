#!/bin/bash

echo "enter the user name:"
read username
echo "entered user is: $username"
if [[ "$username" != gaurav* ]]
then
	echo "invalid user name"
else
	echo "correct user"
fi
