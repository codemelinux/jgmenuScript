#!/bin/bash


echo "Installing important libraries"
#### Installing libraries ###

sudo apt update && sudo apt install -y libx11-xcb-dev libxrandr-dev libghc-cairo-dev libghc-pango-dev librsvg2-dev libmenu-cache-dev libxml2-dev git
echo "Successfully installed."
echo ""

cd ~/Downloads && git clone https://github.com/johanmalm/jgmenu.git
echo ""

cd jgmenu
./configure --prefix=/usr
make
sudo make install && jgmenu_run init
echo "Successfully installed."

echo ""
echo "Copying CodeMe.Linux jgmenu config"
cp -r ~/Downloads/jgmenuScript/customJgmenuConfig/jgmenu/ ~/.config/
echo "process complete.... :)"

