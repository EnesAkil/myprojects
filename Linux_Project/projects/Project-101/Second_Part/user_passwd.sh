#!/bin/bash

# This script creates a new user on the local system.
# You will be prompted to enter the username (login), the person name, and a password.

# The username, password, and host for the account will be displayed.

# Make sure the script is being executed with superuser privileges.

if [[ "${UID}" -ne 0 ]]
then
    echo 'Please run with sudo or as root.'
    exit 1
fi

# Get the username (login).
read -p "Enter the username: " USER_NAME
# Get the real name (contents for the description field).
read -p "Enter the real name: " COMMENT
# Get the password.
read -p "Enter the password: " PASSWORD
# Create the account.
useradd -c "${COMMENT}" -m ${USER_NAME}
# Check to see if the useradd command succeeded.
if [[ "${?}" -eq 0 ]]
then
    echo 'The account has been created.'
    exit 1
fi
# We don't want to tell the user that an account was created when it hasn't been.

# Set the password.
echo ${PASSWORD} | passwd --stdin ${USER_NAME}
# Check to see if the passwd command succeeded.
if [[ "${?}" -eq 0 ]]
    then
        echo 'The password has been set.'
        exit 1
        else
            echo 'The password was not set.'
            exit 1
fi
# Force password change on first login.
passwd -e ${USER_NAME}
# Display the username, password, and the host where the user was created.
echo -e "Username: ${USER_NAME}\nPassword: ${PASSWORD}\nHost: ${HOSTNAME}"

# If you get bad interpreter error: "sed -i -e 's/\r$//' <script_name>" command first.
