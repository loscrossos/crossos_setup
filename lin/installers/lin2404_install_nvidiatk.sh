#!/bin/bash
# Check if running as root
if [[ $EUID -ne 0 ]]; then
    echo "Please run this script as root: sudo $0"
    exit 1
fi

 

#remove old packages from standard repo if installed. These are outdated
sudo apt -y --purge remove nvidia-cuda-toolkit


wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2404/x86_64/cuda-ubuntu2404.pin
sudo mv cuda-ubuntu2404.pin /etc/apt/preferences.d/cuda-repository-pin-600
wget https://developer.download.nvidia.com/compute/cuda/12.9.0/local_installers/cuda-repo-ubuntu2404-12-9-local_12.9.0-575.51.03-1_amd64.deb
sudo dpkg -i cuda-repo-ubuntu2404-12-9-local_12.9.0-575.51.03-1_amd64.deb
sudo cp /var/cuda-repo-ubuntu2404-12-9-local/cuda-*-keyring.gpg /usr/share/keyrings/
sudo apt-get update
sudo apt-get -y install cuda-toolkit

rm -f cuda-repo-ubuntu2404-12-9-local_12.9.0-575.51.03-1_amd64.deb


#add the cuda Toolkit to the path to be able to use it.
CUDA_VERSION="12.9"
CUDA_PATH="/usr/local/cuda-${CUDA_VERSION}"
PROFILE_FILE="/etc/profile.d/cuda.sh"

# Create the profile.d script
echo "Creating global CUDA environment setup at $PROFILE_FILE"
cat > "$PROFILE_FILE" <<EOF
export PATH=${CUDA_PATH}/bin:\$PATH
export LD_LIBRARY_PATH=${CUDA_PATH}/lib64:\$LD_LIBRARY_PATH
EOF

# Make it executable
chmod +x "$PROFILE_FILE"

# Optionally source it now for current shell
echo "CUDA environment set globally for future sessions."
echo "To activate it now, run: source $PROFILE_FILE"

