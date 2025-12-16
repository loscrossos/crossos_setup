kwriteconfig6 --file kwinrc --group TabBox --key LayoutName "thumbnail_grid"


# Alternative styles:
#kwriteconfig6 --file kwinrc --group TabBox --key LayoutName "thumbnails"  # Compact thumbnails
#kwriteconfig6 --file kwinrc --group TabBox --key LayoutName "icons"       # Icon-only
#kwriteconfig6 --file kwinrc --group TabBox --key LayoutName "coverflow"   # 3D cover flow


# Restart KWin to apply changes
kwin_x11 --replace &>/dev/null &
# OR for Wayland:
#kwin_wayland --replace &>/dev/null &
