#v1.0
sudo echo silently installing brew...
# 
# start a background task to keep the sudo auth alive for 20 minutes so that the script installs silently
sudo --validate
( while true; do sleep 120; sudo --validate; done ) &
SUDOPID=$!
# start a background task to kill the loop after 20 minutes (1200 seconds)
( sleep 1200 && kill $SUDOPID ) &



#download and run brew installer in silent mode
NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"





# Get macOS version and architecture and compare it as number(e.g., 12.4 -> 1204). 12.4 is the first version witout python2.
version=$(sw_vers -productVersion)
arch=$(uname -m)
ver_major=$(echo "$version" | cut -d '.' -f1)
ver_minor=$(echo "$version" | cut -d '.' -f2)
ver_number=$((10#$ver_major * 100 + 10#${ver_minor:-0}))
if [ "$ver_number" -ge 1204 ]; then
if [ "$arch" = "arm64" ]; then
#ARM START has python3 only on ARM
echo "Apple Silicon (arm64)"
#only needed on ARM64
# make brew available to all users. only admins can run it. normal users get a harmless error message. the goal is to make the brew installed programs available to everyone.
#check /etc/zprofile if the eval command is already in the file. if not add the command enclosed by a new line before and after it
grep -qxF 'eval "$(/opt/homebrew/bin/brew shellenv)"' /etc/zprofile || { echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"'; echo; } | sudo tee -a /etc/zprofile > /dev/null
#ARM END
elif [ "$arch" = "x86_64" ]; then
#X86 START has python3 only on x86
echo "Intel (x86_64)"

#x86 END
fi
fi