#!/bin/bash
#V1.0
# Sets the computer suspend time to: 8 hours (in seconds and milliseconds)
#works on: KubuntuLTS24.04, UbuntuLTS24.04, Mint22.1
SUSPEND_SECONDS=28800
SUSPEND_MILLISECONDS=28800000

echo "Detecting desktop environment..."
DE=$(echo "$XDG_CURRENT_DESKTOP" | tr '[:upper:]' '[:lower:]')


if [[ "$DE" == *"kde"* ]]; then

    echo "KDE detected. Applying settings using kwriteconfig5..."
    #set suspend time to 8 hours so we can leave the pc working over night if needed
    kwriteconfig5 --file powermanagementprofilesrc --group "AC" --group "SuspendSession" --key "idleTime" $SUSPEND_MILLISECONDS
    # kwriteconfig5 --file powermanagementprofilesrc --group "Battery" --group "SuspendSession" --key "idleTime" $SUSPEND_MILLISECONDS
    # kwriteconfig5 --file powermanagementprofilesrc --group "LowBattery" --group "SuspendSession" --key "idleTime" $SUSPEND_MILLISECONDS
    echo "reading system settings"
    grep idleTime ~/.config/powermanagementprofilesrc

elif [[ "$DE" == *"gnome"* || "$DE" == *"cinnamon"* || "$DE" == *"unity"* ]]; then

    echo "GNOME-based environment detected. Applying settings using gsettings..."
    gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-ac-timeout $SUSPEND_SECONDS
    gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-ac-type 'suspend'
    echo "reading system settings"
    gsettings get org.gnome.settings-daemon.plugins.power sleep-inactive-ac-timeout
    gsettings get org.gnome.settings-daemon.plugins.power sleep-inactive-ac-type


else
    echo "Unsupported or unknown desktop environment. You may need to set power settings manually: $XDG_CURRENT_DESKTOP"
fi
