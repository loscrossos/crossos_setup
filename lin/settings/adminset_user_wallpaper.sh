#!/bin/bash

#SETS A WALLPAPER FOR A USER IN KDE

#USAGE:
# sudo ./adminset_user_wallpaper.sh username /path/to/wallpaper.jpg


# Check if running as root
if [ "$(id -u)" -ne 0 ]; then
    echo "This script must be run as root" >&2
    exit 1
fi

# Check parameters
if [ "$#" -lt 2 ]; then
    echo "Usage: $0 <username> <wallpaper-image-path>"
    exit 1
fi

USERNAME="$1"
WALLPAPER_PATH="$2"

# Verify user exists
if ! id -u "$USERNAME" >/dev/null 2>&1; then
    echo "Error: User $USERNAME does not exist" >&2
    exit 1
fi

# Verify image exists
if [ ! -f "$WALLPAPER_PATH" ]; then
    echo "Error: Wallpaper file $WALLPAPER_PATH not found" >&2
    exit 1
fi

# Get user home directory
USER_HOME=$(getent passwd "$USERNAME" | cut -d: -f6)

# Create wallpapers directory with proper permissions
WALLPAPER_DIR="$USER_HOME/.local/share/wallpapers"
mkdir -p "$WALLPAPER_DIR"
chown "$USERNAME:$USERNAME" "$WALLPAPER_DIR"

# Copy wallpaper to user's directory
FILE_EXT="${WALLPAPER_PATH##*.}"
WALLPAPER_DEST="$WALLPAPER_DIR/admin_set_wallpaper_$(date +%s).$FILE_EXT"
cp "$WALLPAPER_PATH" "$WALLPAPER_DEST"
chown "$USERNAME:$USERNAME" "$WALLPAPER_DEST"

# Set wallpaper configuration
sudo -u "$USERNAME" dbus-launch kwriteconfig5 --file "$USER_HOME/.config/plasma-org.kde.plasma.desktop-appletsrc" \
    --group Containments --group 1 --group Wallpaper --group org.kde.image --group General \
    --key Image "file://$WALLPAPER_DEST"

# Set for lockscreen too
sudo -u "$USERNAME" dbus-launch kwriteconfig5 --file "$USER_HOME/.config/kscreenlockerrc" \
    --group Greeter --group Wallpaper --group org.kde.image --group General \
    --key Image "file://$WALLPAPER_DEST"

# Refresh Plasma
pkill -u "$USERNAME" plasmashell
sudo -u "$USERNAME" kstart5 plasmashell >/dev/null 2>&1 &

echo "Wallpaper set successfully for user $USERNAME"
echo "New wallpaper location: $WALLPAPER_DEST"
