#on kubuntu i have my extra mouse keys: Button 9 is up and 8 is down. I want a script that sets this for the whole system using a configfile on  on kubuntu to be volume up and down

sudo tee /usr/share/X11/xorg.conf.d/90-logitech-m705-volume.conf << 'EOF'
Section "InputClass"
    Identifier "Logitech M705 Volume Buttons"
    MatchProduct "Logitech M705"
    MatchIsPointer "on"
    Option "ButtonMapping" "1 2 3 4 5 6 7 XF86AudioRaiseVolume XF86AudioLowerVolume 0 0 0"
EndSection
EOF


#sudo udevadm control --reload-rules && sudo udevadm trigger
#xinput get-button-map "Logitech M705"


#remove
# sudo rm /usr/share/X11/xorg.conf.d/90-logitech-m705-volume.conf