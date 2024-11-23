#!/bin/bash

USERID=$(id -u)

    if [ $USERID -ne 0 ]
    then
        echo "Please run this script with root priveleges"
        exit 1
    fi

dnf list installed mysql

if [ $? -ne 0 ]
then
    echo "mysql is not installed, going to install it.."
    dnf install mysql -y
else
    echo "mysql is already installed, nothing to do.."
fi

