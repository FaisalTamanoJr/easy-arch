# Start system services
sudo systemctl enable sddm
sudo systemctl enable bluetooth
sudo systemctl enable cups

# Install video/multimedia plugins
sudo pacman -S ffmpeg gst-plugins-good gst-plugins-bad gst-plugins-ugly gwenview spectacle ffmpegthumbs evince conky


# Install an AUR Helper
sudo pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si