# Useful docs
# Setup everything: https://suva.sh/posts/gpg-ssh-smartcard-yubikey-keybase/
# GPG commit signature: https://git-scm.com/book/fr/v2/Utilitaires-Git-Signer-votre-travail

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

cp gnpug ${HOME}/.gnupg
chmod 700 ${HOME}/.gnupg

sudo apt install -yy scdameon
/usr/lib/gnupg/scdaemon --daemon

echo "[+] Create SmartCard group"
sudo addgroup scard
sudo addgroup dh4rm4 scard


# Master: E9135BB2EE8DD868CFD419746DB85EE72825E178
#                                 6DB85EE72825E178

# Sign : CF6BB7A509134354
# Encrypt: 45F1FC47A72EC344
# Auth: DE2698BCDA72E0C3
