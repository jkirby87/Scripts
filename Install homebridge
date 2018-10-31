#!/bin/sh

# This will install home bridge on your raspberry-pi.
### This must be run as sudo ###

# Need to update your system
echo "Updateing"
apt-get update
echo "Upgrading"
apt-get upgrade

# Check the version of Node on the System
echo Checking the version of Node on your system
$NodeVersion=node --version
echo "$NodeVersion"
if "$NodeVersion" -ge 4.3; then 
    $install="Yes"
else
    $install="No"
fi

# Install homebridge
if "$install"="Yes"; then
   echo "Installing HomeBridge now."
   # Install the libavahi-compat-libdnssd-dev package: 
   sudo apt-get install libavahi-compat-libdnssd-dev
   # Install Homebridge using npm:
   sudo npm install -g --unsafe-perm homebridge
elseif "$install"="No"; then
  echo "Not Cool. You need to get a new version of Node on your system."
  sleep 3
  exit 0
else
  echo "Something went wrong."
fi
