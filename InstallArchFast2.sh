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
cd

# Download wallpaper
mkdir Pictures
wallpaper="https://i.redd.it/frj4dudeg3b71.jpg"
curl $wallpaper --output Pictures/wallpaper.jpg

# Clone the awesome window manager config
git clone https://github.com/FaisalTamanoJr/project-dotfiles .awesomeConfig
mkdir .config/awesome
cp -a .awesomeConfig/.config/awesome .config/awesome


# Start the enabled services
sudo systemctl start bluetooth
sudo systemctl start cups
sudo systemctl start sddm