#!/usr/bin/env bash
set -eu

# ref: https://bitbucket.org/ignitionrobotics/docs/src/default/blueprint/install.md
# Open Robotics, CC BY 3.0

IGN_VERSION=blueprint

sudo sh -c 'echo "deb http://packages.osrfoundation.org/gazebo/ubuntu-stable $(lsb_release -cs) main" > /etc/apt/sources.list.d/gazebo-stable.list'
wget http://packages.osrfoundation.org/gazebo.key -O - | sudo apt-key add -
sudo apt update
sudo apt install -y ignition-${IGN_VERSION}
