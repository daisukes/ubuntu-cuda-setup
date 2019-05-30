#!bin/sh

sudo service lightdm stop
mkdir -p temp
if [ ! -e "temp/cuda10.run" ]; then
    wget https://developer.nvidia.com/compute/cuda/10.0/Prod/local_installers/cuda_10.0.130_410.48_linux -O temp/cuda10.run
    chmod 705 ./temp/cuda10.run
fi
sudo ./temp/cuda10.run
