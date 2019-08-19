#!/bin/bash
set -x

sudo rosdep init
rosdep update
echo "source /opt/ros/$ros_distro/setup.bash" >> ~/.bashrc
echo "source $(catkin locate --shell-verbs)" >> ~/.bashrc
source ~/.bashrc

#roslaunch rosbridge_server rosbridge_websocket.launch
mkdir -p ~/catkin_ws/src
cd ~/catkin_ws
catkin_make

