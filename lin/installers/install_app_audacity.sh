# AUDACITY
# free audio editor. the repo has old versions. we enable the ppa to get the latest audacity versions
# from: https://ubuntuhandbook.org/index.php/2023/04/ubuntu-ppa-for-audacity/
#pavucontrol is needed for audacity to have pulseaudio support and access virtual sound cards (e.g. for streaming apps)
sudo add-apt-repository -y ppa:ubuntuhandbook1/audacity
sudo apt install -y audacity pavucontrol


