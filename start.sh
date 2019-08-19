#!/bin/bash

if [ "$1" = "16" ]; then
  AMI_DISTRO=xenial-16.04 ROS_DISTRO=kinetic packer build -machine-readable packer.json | tee "$2"
fi

if [ "$1" = "18" ]; then
  AMI_DISTRO=bionic-18.04 ROS_DISTRO=melodic packer build -machine-readable packer.json | tee "$2"
fi

