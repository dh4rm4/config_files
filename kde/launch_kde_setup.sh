echo "[+] Install KDE Plasma"
sudo apt install kde-plasma-desktop -yy
sudo apt-get purge kwrite konqueror kwalletmanager plasma-discover plasma-discover-common -yy
sudo apt --fix-broken install -yy
sudo apt-get autoremove

echo "[+] Add KDE config"
cp config/* ~/.config/

echo "[+] Install Kvantum"
sudo apt install -yy g++ cmake libx11-dev libxext-dev qtbase5-dev libqt5svg5-dev libqt5x11extras5-dev libqt4-dev qttools5-dev-tools libkf5windowsystem-dev git
mkdir kvantum_installation && cd kvantum_installation
wget https://github.com/tsujan/Kvantum/archive/V0.10.8.zip
unzip V0.10.8.zip && cd Kvantum-0.10.8/Kvantum/

mkdir build && cd build
cmake ..
make
sudo make install
echo "export QT_STYLE_OVERRIDE=kvantum" >> ~/.profile
cd ../../../.. 
rm -rf kvantum_installation

echo "[+] Install Monochrome theme"
mkdir monochrome_installation && cd monochrome_installation
git clone https://gitlab.com/pwyde/monochrome-kde.git && cd monochrome-kde
bash install.sh -i
