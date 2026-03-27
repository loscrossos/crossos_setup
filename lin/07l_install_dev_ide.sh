# install_dev_ide


./installers/install_app_vscode.sh 


#codium
#open source version of VS Code by Paul Carroty
#https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo
wget -qO - https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/raw/master/pub.gpg | gpg --dearmor | sudo dd of=/usr/share/keyrings/vscodium-archive-keyring.gpg
#this contains a fix for amd64 systems to add arch=amd64 else the repo will produce an annoying warning about i386 packages
echo 'deb [arch=amd64,arm64 signed-by=/usr/share/keyrings/vscodium-archive-keyring.gpg ] https://paulcarroty.gitlab.io/vscodium-deb-rpm-repo/debs vscodium main' | sudo tee /etc/apt/sources.list.d/archive_uri-https_paulcarroty_gitlab_io_vscodium-deb-rpm-repo_debs-noble.list
sudo apt update
sudo apt-get install -y codium




 

