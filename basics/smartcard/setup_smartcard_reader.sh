echo "[+] Install dependancies"
sudo apt install -yy libpcsclite-dev libpcsclite1

mkdir -p /tmp/smartcard/
cd /tmp/smartcard/
wget https://www.gnupg.org/howtos/card-howto/en/gnupg-ccid
wget https://www.gnupg.org/howtos/card-howto/en/gnupg-ccid.rules
sudo cp gnupg-ccid.rules /etc/udev/gnupg-ccid.rules

sudo mkdir -p /etc/udev/scripts/
sudo cp gnupg-ccid /etc/udev/scripts/gnupg-ccid
sudo chmod +x /etc/udev/scripts/gnupg-ccid
sudo ln -s /etc/udev/gnupg-ccid.rules /etc/udev/rules.d/gnupg-ccid.rules

sudo apt install -yy scdameon
/usr/lib/gnupg/scdaemon --daemon

echo "[+] Create SmartCard group"
sudo addgroup scard
sudo addgroup dh4rm4 scard
