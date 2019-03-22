# pegasus_setup

1. When installing Debian to your computer, do NOT select to install "Debian Desktop" or ANY desktop option. Instead, install print server and system base *only* (nothing else). Complete the install and reboot.

2. Login and Install git
```
Login: [username]
Pass: *******

$ su
Password: ****
```
Remove line related to USB hard drive in /etc/apt/souces.list
```
root $ nano /etc/apt/sources.list
root $ apt update
root $ apt install git
root $ exit
```

3. Clone repository as regular user
```
$ mkdir ~/greeny && cd $_
$ git clone https://github.com/dh4rm4/pegasus_setup.git
$ cd pegasus_setup
```

4. As root execute 0_setup_sudo_user.sh
```
$ su
Password: *****
root $ ./0_setup_sudo_user.sh
root $ exit
```

5. Logout / Login
```
$ exit

Login: [username]
Pass: *******
```

6. Launch basics installation script
```
$ ./1_launch_basic.sh
```

7. Install KDE Plasma + Theme
```
./2_launch_kde_setup.py
```

8. Reboot
```
$ sudo reboot
```

9. Setup desktop confs

### Widget Style
Run `kvantummanager` > **Change/Delete Theme** > select theme **Monochrome** > **Use this theme**.

### Window Decorations
Change **Aurorae** theme in **System Settings** > **Application Style** > **Window Decorations** > select **Monochrome**.

### Desktop Effects
Enable **Blur** in **System Settings** > **Desktop Behaviour** > **Desktop Effetcs**.

### SDDM Login Screen (optional)
Change default font for **SDDM** in the `/usr/share/sddm/themes/monochrome/heme.conf` configuration file.
