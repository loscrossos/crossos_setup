#vscode
#from: https://code.visualstudio.com/docs/setup/linux march2026

sudo apt-get install wget gpg
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg 
sudo install -D -o root -g root -m 644 microsoft.gpg /usr/share/keyrings/microsoft.gpg 
printf "Types: deb\nURIs: https://packages.microsoft.com/repos/code\nSuites: stable\nComponents: main\nArchitectures: amd64,arm64,armhf\nSigned-By: /usr/share/keyrings/microsoft.gpg\n" | sudo tee /etc/apt/sources.list.d/vscode.sources > /dev/null
sudo apt install apt-transport-https && sudo apt update && sudo apt install -y code
rm -f microsoft.gpg
