#!/bin/bash
set -e

sudo DEBIAN_FRONTEND=noninteractive apt-get update
sudo DEBIAN_FRONTEND=noninteractive apt-get install -y wget curl gpg

# Firefox from Mozilla (Ubuntu's own Firefox package is only a Snap placeholder)
sudo install -d -m 0755 /etc/apt/keyrings
wget -q https://packages.mozilla.org/apt/repo-signing-key.gpg -O- | sudo tee /etc/apt/keyrings/packages.mozilla.org.asc > /dev/null
echo "deb [signed-by=/etc/apt/keyrings/packages.mozilla.org.asc] https://packages.mozilla.org/apt mozilla main" | sudo tee /etc/apt/sources.list.d/mozilla.list > /dev/null
printf 'Package: *\nPin: origin packages.mozilla.org\nPin-Priority: 1000\n\nPackage: firefox*\nPin: release o=Ubuntu\nPin-Priority: -1\n' | sudo tee /etc/apt/preferences.d/mozilla > /dev/null
sudo DEBIAN_FRONTEND=noninteractive apt-get update

# Firefox, file manager, modern desktop and theme
sudo DEBIAN_FRONTEND=noninteractive apt-get install -y firefox pcmanfm xfce4 xfce4-terminal xfce4-whiskermenu-plugin thunar arc-theme papirus-icon-theme plank
