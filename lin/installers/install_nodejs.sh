sudo apt-get update
# Download and import the NodeSource GPG key and setup script
curl -fsSL https://deb.nodesource.com/setup_22.x | sudo -E bash -

# Install the updated Node.js system-wide
sudo apt-get install -y nodejs


#sudo npm install -g @google/gemini-cli