#!/bin/bash

echo 18001900|sudo -S sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" >
/etc/apt/sources.list.d/ros-latest.list'

wget  http://packages.osrfoundation.org/gazebo.key
sudo apt-key add gazebo.key
sudo apt-get update && sudo apt-get upgrade

echo '======== Remove exist Paython packages ========='
sudo apt remove python3-rosdep python3-rosinstall python3-rosinstall-generator python3-wstool build-essential

echo 'Preparing ROS Installation ...'

sudo apt install curl

echo 'Start Key setup....'
curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -

echo '======= Run Package update ======='
sudo apt update

echo '======== Start ROS Installation ========='
sudo apt install ros-noetic-desktop-full

echo "source /opt/ros/noetic/setup.bash" >> ~/.bashrc
source ~/.bashrc
source /opt/ros/melodic/setup.bash

echo '======== Start Paython Installation  ========='
sudo apt install python3-rosdep python3-rosinstall python3-rosinstall-generator python3-wstool build-essential

sudo rosdep init
rosdep update

echo '******** End of ROS Installation  **********'

echo '******** /n /n /n Check if ROS Installation done successfully **********'

printenv | grep ROS



