#!/bin/bash

TMP_FILE=/tmp/parse.tmp
if [ -e /tmp/parse.tmp ]; then
    echo "######################################################################"
    echo "# Cleaning up from previous install failure"
    echo "######################################################################"
    rm -f /tmp/parse.tmp
fi

echo ""
echo ""
echo "######################################################################"
echo "# Fetching latest version of Parse"
echo "######################################################################"

curl --progress-bar https://www.parse.com/downloads/cloud_code/parse -o /tmp/parse.tmp

echo ""
echo ""
echo "######################################################################"
echo "# Installing"
echo "######################################################################"

mv /tmp/parse.tmp parse
chmod 755 parse 

echo ""
echo ""
echo "######################################################################"
echo "# Setting Up Parse"
echo "######################################################################"
./parse new .

#VERSION=$(cat config/global.json | grep "parseVersion")

echo ""
echo ""
echo "######################################################################"
echo "# Upgrading Python"
echo "######################################################################"

nada-nix install python-2.7.4
ln -s ~/.nada-nix-profile/bin/python2.7 ~/.nada-nix-profile/bin/python

cp ~/.bashrc ~/.bashrc.bak
echo -e "\nbash $PWD/.post_setup.sh" >> ~/.bashrc

echo ""
echo ""
echo "######################################################################"
echo "# Restarting Shell"
echo "######################################################################"
kill -HUP $PPID 