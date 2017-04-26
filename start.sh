#! /usr/bin/env bash

echo ------------------------------------------------------------------
echo Xvfb :1 -screen 0 1600x1200x16  &
Xvfb :1 -screen 0 1600x1200x16  &
echo ------------------------------------------------------------------
echo source /opt/ros/kinetic/setup.bash
source /opt/ros/kinetic/setup.bash
echo ------------------------------------------------------------------
echo source /catkin/devel/setup.bash
source /catkin/devel/setup.bash
echo ------------------------------------------------------------------
echo roslaunch a3c train.launch gui:=$1 worker-args:=\"$2\"
roslaunch a3c train.launch gui:=$1 worker-args:="$2"
echo ------------------------------------------------------------------