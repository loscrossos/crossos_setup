#v1.0
sudo echo installing crossos developer setup

#DEV Mode not needed on macOS

export HOMEBREW_NO_ENV_HINTS=1

#EXTEND SLEEP SETTINGS
#sleep time to 8h so we can compile long projects over night if needed
sudo pmset -c sleep 480
#to check settings uncomment next line
# pmset -g
#screen sleep after 30 minutes
sudo pmset -c displaysleep 30


#COMPILER TOOLS
#compiler was installed by brew already. cmake is missing
script -q /dev/null brew install --formula cmake


#GPU
#Drivers not needed for mac


#CUDA
#not available for mac

sudo --validate
#PYTHON
script -q /dev/null brew install --formula python@3.9 python@3.10 

sudo --validate
#PYTHON
script -q /dev/null brew install --formula python@3.11 python@3.12 python@3.13

#make the python command available on systems that don't have python2 installed.
# Get macOS version and architecture and compare it as number(e.g., 12.4 -> 1204). 12.4 is the first version witout python2.
#with this we apply changes depending on architecture and OS version.
version=$(sw_vers -productVersion)
arch=$(uname -m)
ver_major=$(echo "$version" | cut -d '.' -f1)
ver_minor=$(echo "$version" | cut -d '.' -f2)
ver_number=$((10#$ver_major * 100 + 10#${ver_minor:-0}))
if [ "$ver_number" -ge 1204 ]; then
if [ "$arch" = "arm64" ]; then
#ARM START has python3 only on ARM
[ ! -e /opt/homebrew/bin/python ] && echo "Apple Silicon (arm64): installing python shortcut"
# install a python3 to python link. so you can simply type python. out of 2 alternatives we use the brew directory
#[ ! -e /usr/local/bin/python ] && sudo ln -s /opt/homebrew/bin/python3 /usr/local/bin/python
[ ! -e /opt/homebrew/bin/python ] && sudo ln -s /opt/homebrew/bin/python3 /opt/homebrew/bin/python
[ -e /opt/homebrew/bin/python ] && echo "Apple Silicon (arm64): python shortcut was already installed"
#ARM END
elif [ "$arch" = "x86_64" ]; then
#X86 START has python3 only on x86
[ ! -e /usr/local/bin/python ] && echo "Intel (x86_64): installing python shortcut"
[ ! -e /usr/local/bin/python ] && sudo ln -s /usr/local/bin/python3 /usr/local/bin/python
#x86 END
fi
fi



#WGET
script -q /dev/null brew install wget


#CURL
#comes pre installed but in an older version that does not work with brew anymore on big sur.
script -q /dev/null brew install curl


#GIT


#GIT LFS
script -q /dev/null brew install git-lfs


git lfs install


#GITHUB CLI
script -q /dev/null brew install gh


#FFMPEG
#does not work on macos 11. Unless  curl is updated
#this is needed for when curl is too old. fo example in the ffmpeg package
script -q /dev/null brew install curl
export HOMEBREW_FORCE_BREWED_CURL=1
script -q /dev/null brew install ffmpeg


#ESPEAKNG
script -q /dev/null brew install espeak-ng
