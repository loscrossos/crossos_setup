#!/bin/bash
#v1.0
#DEV Mode not needed on Linux

#EXTEND SLEEP SETTINGS
./installers/linux_setup_sleeptime.sh
 

#COMPILER TOOLS
sudo apt install -y build-essential cmake
#these were likely installed by build-essential but we make sure.
sudo apt install -y gcc make perl dkms linux-headers-$(uname -r)
#those are needed for development libraries
sudo apt install -y apt-transport-https libssl-dev libffi-dev



#GPU DRIVER
# Autoinstall the best available drivers. for example if you have a nvidia gpu: the tested proprietary drivers
sudo ubuntu-drivers autoinstall

# enable persistence to have the gpu wake up after a system sleep. might be not fixed on LTS
sudo nvidia-smi -pm 1

#CUDA
# NVIDIA AI PROGRAMMING TOOLKIT
# Get Ubuntu version ID (e.g., "20.04")
VERSION_ID=$(grep '^VERSION_ID=' /etc/os-release | cut -d '"' -f 2)
case "$VERSION_ID" in
  "20.04")
    echo "Detected Ubuntu 20.04"
    sudo apt install -y nvidia-cuda-toolkit
    ;;
  "22.04")
    echo "Detected Ubuntu 22.04"
    sudo apt install -y nvidia-cuda-toolkit
    ;;
  "24.04")
    echo "Detected Ubuntu 24.04"
    sudo ./installers/lin2404_install_nvidiatk.sh 
    ;;
  *)
    echo "Unsupported Ubuntu version for CUDA12.9. Installing available version: $VERSION_ID"
    sudo apt install -y nvidia-cuda-toolkit
    ;;
esac



#PYTHON
#for python old versions
#from here: https://askubuntu.com/questions/1398568/installing-python-who-is-deadsnakes-and-why-should-i-trust-them
sudo add-apt-repository -y ppa:deadsnakes/ppa
sudo apt update
sudo apt install -y python3.8 python3.8-venv python3.8-distutils python3.8-dev 
sudo apt install -y python3.9 python3.9-dev python3.9-venv python3.9-distutils
sudo apt install -y python3.10 python3.10-venv python3.10-distutils python3.10-dev
sudo apt install -y python3.11 python3.11-venv python3.11-distutils python3.11-dev
sudo apt install -y python3.12 python3.12-dev python3.12-venv
sudo apt install -y python3.13 python3.13-venv python3.13-dev
sudo apt install -y python3-pip python-is-python3 


#WGET
#comes pre-installed in kubuntu
sudo apt install -y   wget

#CURL
#curl command line tool to download files
#gparted: tool to partition disks
#krename: tool to rename files
sudo apt install -y   curl


#GIT
#git comes preinstalled but  we need to enable large downloads for git.
sudo apt install -y git
#force to checkin in linux style
sudo git config --system core.autocrlf input
#check clrf with
#git config --get core.autocrlf

#GIT LFS
sudo apt install -y git-lfs
git lfs install


#GITHUB CLI
sudo apt install -y gh


#FFMPEG
#comes pre-installes in kubuntu
sudo apt install -y ffmpeg

#eSpeak-NG
sudo apt install -y espeak-ng




#additional tools
sudo apt install -y gparted  krename
