#! /usr/bin/env bash

echo Gazebo will start after the first worker comes online...
while [[ -z "$(docker ps | grep w-0)" ]]; do
  sleep 0.0001 
done
export GAZEBO_MASTER_IP=$(docker inspect --format \
  '{{ .NetworkSettings.Networks.a3cnet.IPAddress }}' w-0)
export GAZEBO_MASTER_URI=$GAZEBO_MASTER_IP:11345
echo '
You can close the Gazebo GUI at any time with affecting training. 
Use `bash ardrone_project/gazebo_gui.sh` to reopen the GUI.
'
gzclient --verbose
