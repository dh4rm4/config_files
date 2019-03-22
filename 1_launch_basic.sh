echo "[+] Install basics stuff"
sudo apt install -yy kde-plasma-desktop htop git tree
sudo apt purge -yy kwrite konqueror kwalletmanager plasma-discover plasma-discover-common
sudo apt --fix-broken install
sudo apt-get autoremove -yy
cd basics

echo "[+] Install Oh-my-zsh"
cd Oh-my-zsh/
./get_oh_my_zsh.sh > out.log 2> err.log
cd ..

echo "[+] Setup emacs"
cd emacs
./setup_emacs.sh >> out.log 2>> err.log
cd ..

echo "[+] Setup Fonts"
cd fonts
./setup_fonts.sh
cd ..

echo "[+] Setup Terminator"
cd Terminator
sudo apt install -yy Terminator
cp config ~/.config/terminator
cd ..

echo "[+] Setup Vivaldi"
cd vivaldi
sudo dpkg -i vivaldi-stable_2.3.1440.61-1_amd64.deb
cp Preferences ~/.config/vivaldi/Default/
cd ..
