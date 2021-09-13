#!/bin/bash

sudo apt-get update
sudo apt-get install git

echo "Enter you github user name"
read username

echo "Enter your email for the github account"
read useremail

echo "Is your user name "$username" and email "$useremail" correct?(Y/n)"
read op

while [ $op = 'n' ]
do 
	echo "\nRe-enter your correct github user name and email"
	echo "Enter user name"
	read username
	echo "Enter email"
	read useremail
	echo "Is your user name "$username" and email "$useremail" correct?(Y/n)"
	read op
done

git config --global user.name "$username"
git config --global user.email "$useremail"

echo "\nHere are your git configurations set in ~/.gitconfig"
git config --list

echo "Press enter to continue for SSH setup"
read op

ssh-keygen -t rsa -b 4096 -C "$useremail"
