#this removes the need to type sudo for docker commands
sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker
