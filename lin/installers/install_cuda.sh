
#CUDA
# NVIDIA AI PROGRAMMING TOOLKIT
# Function to get base Ubuntu version even for Linux Mint
get_ubuntu_base_version() {
  if [ -f /etc/os-release ]; then
    . /etc/os-release
    if [[ "$ID" == "linuxmint" ]]; then
      # Mint includes UBUNTU_CODENAME
      if grep -q '^UBUNTU_CODENAME=' /etc/os-release; then
        UBUNTU_CODENAME=$(grep '^UBUNTU_CODENAME=' /etc/os-release | cut -d '=' -f2)
        # Map codename to version
        case "$UBUNTU_CODENAME" in
          focal)
            echo "20.04"
            ;;
          jammy)
            echo "22.04"
            ;;
          noble)
            echo "24.04"
            ;;
          *)
            echo "unknown"
            ;;
        esac
      else
        echo "unknown"
      fi
    else
      # Regular Ubuntu
      grep '^VERSION_ID=' /etc/os-release | cut -d '"' -f 2
    fi
  else
    echo "unknown"
  fi
}

VERSION_ID=$(get_ubuntu_base_version)

case "$VERSION_ID" in
  "20.04")
    echo "Detected Ubuntu 20.04 based system"
    sudo apt install -y nvidia-cuda-toolkit
    ;;
  "22.04")
    echo "Detected Ubuntu 22.04 based system"
    sudo apt install -y nvidia-cuda-toolkit
    ;;
  "24.04")
    echo "Detected Ubuntu 24.04 based system"
    sudo ./installers/lin2404_install_nvidiatk.sh 
    ;;
  *)
    echo "Unsupported or unrecognized Ubuntu version: $VERSION_ID"
    sudo apt install -y nvidia-cuda-toolkit
    ;;
esac
