echo "[+] Install basics stuff"
sudo cp sources.list /etc/apt/sources.list
sudo apt update
sudo apt upgrade -yy
sudo apt install -yy htop git tree xclip firmware-iwlwifi
cd basics

echo "[+] Setup git"
cd git
./setup_git.sh
cd..

echo "[+] Setup emacs"
cd emacs
./setup_emacs.sh
cd ..

echo "[+] Setup Fonts"
cd fonts
./setup_fonts.sh
cd ..

echo "[+] Setup Terminator"
cd terminator
sudo apt install -yy terminator
mkdir -p ~/.config/terminator/
cp config ~/.config/terminator
cd ..

echo "[+] Setup Vivaldi"
cd vivaldi
sudo dpkg -i vivaldi-stable_2.3.1440.61-1_amd64.deb
sudo apt update --fix-missing -yy
sudo apt-get install -f
mkdir -p ~/.config/vivaldi/Default
cp Preferences ~/.config/vivaldi/Default/
cd ..

echo "[+] Setup smartcard reader"
cd smartcard
./setup_smartcard_reader.sh

echo "[+] Setup python env"
sudo apt install -yy python3-pip
pip3 install virtualenvwrapper
sudo mkdir -p /usr/share/virtualenvwrapper
sudo cp ${HOME}/.local/bin/virtualenvwrapper.sh /usr/share/virtualenvwrapper/virtualenvwrapper.sh

echo "[+] Install Python 3.7.2"
cd /usr/src
sudo apt-get install zlib1g-dev libffi-dev
sudo wget https://www.python.org/ftp/python/3.7.2/Python-3.7.2.tgz
sudo tar xzf Python-3.7.2.tgz
cd Python-3.7.2
sudo ./configure --enable-optimizations
sudo make altinstall
