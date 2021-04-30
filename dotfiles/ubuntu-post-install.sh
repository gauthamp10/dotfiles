#!/bin/sh
# A post install bash script for Ubuntu 18.04 and 20.04
# Update & upgrade
echo "
#####################################################################################################    
                            Update and Upgrade
######################################################################################################
"
sudo apt-get update && sudo apt-get -y upgrade

# Install and setup tlp
echo "
#####################################################################################################    
                            Install and setup tlp
######################################################################################################
"
sudo add-apt-repository -y ppa:linrunner/tlp
sudo apt-get update
sudo apt-get install -y tlp tlp-rdw
sudo tlp start

# Insall basic archive tools
echo "
#####################################################################################################    
                            Install basic archives
######################################################################################################
"
sudo apt-get install -y rar unrar p7zip-full p7zip-rar

# Install synaptic package manager
echo "
#####################################################################################################    
                            Install Synaptic package manager
######################################################################################################
"
sudo apt-get install -y synaptic

# Install Synapse App launcher
echo "
#####################################################################################################    
                            Install rofi
######################################################################################################
"
sudo apt-get install -y rofi

# Install some commandline apps
echo "
#####################################################################################################    
                            Install some CLI apps
######################################################################################################
"
sudo apt-get install -y htop vim vim-gtk vifm tmux ncdu wget git libwww-mechanize-perl apt-transport-https ca-certificates curl software-properties-common gnupg
# Download my vimrc
echo "
#####################################################################################################    
                            Download my vimrc
######################################################################################################
"
cd ~ && wget https://raw.githubusercontent.com/gauthamp10/dotfiles/main/dotfiles/vifmrc

# Download my vifmrc
echo "
#####################################################################################################    
                            Download my vifmrc
######################################################################################################
"
cd ~/.config/vifm/ && wget https://raw.githubusercontent.com/gauthamp10/dotfiles/main/dotfiles/vifmrc

# Install some desktop apps
echo "
#####################################################################################################    
                            Install some desktop apps
                [firefox,gpared,catfish,mpv,rythmbox,transmission]
######################################################################################################
"
sudo apt-get install -y firefox gparted catfish mpv rhythmbox transmission

# Install Brave-browser
echo "
#####################################################################################################    
                            Install Brave-browser
######################################################################################################
"
curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add -
echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
sudo apt install -y brave-browser

# Install Vscodium
echo "
#####################################################################################################    
                            Install VSCodium
######################################################################################################
"
wget -qO - https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/raw/master/pub.gpg | gpg --dearmor | sudo dd of=/etc/apt/trusted.gpg.d/vscodium.gpg
echo 'deb https://paulcarroty.gitlab.io/vscodium-deb-rpm-repo/debs/ vscodium main' | sudo tee --append /etc/apt/sources.list.d/vscodium.list
sudo apt update && sudo apt install -y codium

# Install Kdenlive
echo "
#####################################################################################################    
                            Install Kdenlive
######################################################################################################
"
sudo add-apt-repository -y ppa:kdenlive/kdenlive-stable 
sudo apt-get update
sudo apt install -y kdenlive

# Install Kazam (Screen Recorder)
echo "
#####################################################################################################    
                            Install Kazam (Screen Recorder)
######################################################################################################
"
sudo apt-get install -y kazam

# Install Cheese (Webcam)
echo "
#####################################################################################################    
                            Install Cheese (Webcam)
######################################################################################################
"
sudo apt-get install -y cheese

# Install Handbrake
echo "
#####################################################################################################    
                            Install Handbrake
######################################################################################################
"
sudo add-apt-repository -y ppa:stebbins/handbrake-releases
sudo apt-get update
sudo apt install -y handbrake

# Install rclone
echo "
#####################################################################################################    
                            Install Rclone
######################################################################################################
"
curl https://rclone.org/install.sh | sudo bash

# Make Applications folder
echo "
#####################################################################################################    
                            Make Applications folder
######################################################################################################
"
mkdir ~/Applications && cd ~/Applications

# Install telegram-desktop
echo "
#####################################################################################################    
                            Install telegram-desktop
######################################################################################################
"
wget https://telegram.org/dl/desktop/linux
tar -xf linux && rm -rf ./linux

# Install Waterfox
echo "
#####################################################################################################    
                            Install Waterfox
######################################################################################################
"
wget $(mech-dump --links "https://www.waterfox.net/download/" | head -"16" | tail -1)
tar -xf *.bz2 && rm -rf *.bz2 
cat > ~/.local/share/applications/waterfox.desktop <<- "EOF"
#!/usr/bin/env xdg-open

[Desktop Entry]
Type=Application
Terminal=false
Exec=/home/bulo98/Applications/waterfox/waterfox
Name=waterfox
Comment=Web browser
Icon=/home/bulo98/Applications/waterfox/browser/chrome/icons/default/default64.png
EOF

# Install XDM
echo "
#####################################################################################################    
                            Install XDM
######################################################################################################
"
wget $(curl -s https://api.github.com/repos/subhra74/xdm/releases/latest | grep "tar.xz" | cut -d : -f 2,3 | tr -d \")
tar -xf *.xz && sudo ./install.sh && rm -rf ./install.sh readme.txt && rm -rf *.xz

# Install Stacer
echo "
#####################################################################################################    
                            Install Stacer
######################################################################################################
"
wget $(curl -s https://api.github.com/repos/oguzhaninan/Stacer/releases/latest | grep "amd64.deb" | cut -d : -f 2,3 | tr -d \")
sudo dpkg -i *.deb && sudo apt-get install -f && rm -rf *.deb
sudo apt --fix-broken install -y

# Install AppImage Launcher
echo "
#####################################################################################################    
                            Install AppImage Launcher
######################################################################################################
"
wget $(curl -s https://api.github.com/repos/TheAssassin/AppImageLauncher/releases/latest | grep "bionic_amd64.deb" | cut -d : -f 2,3 | tr -d \")
sudo dpkg -i *.deb && sudo apt-get install -f && rm -rf *.deb
sudo apt --fix-broken install -y

# Install Zoom
echo "
#####################################################################################################    
                            Install Zoom
######################################################################################################
"
wget https://zoom.us/client/latest/zoom_amd64.deb
sudo dpkg -i *.deb && sudo apt-get install -f && rm -rf *.deb
sudo apt --fix-broken install -y

# Download Rclone-browser
echo "
#####################################################################################################    
                            Download Rclone-browser appimage
######################################################################################################
"
wget $(curl -s https://api.github.com/repos/kapitainsky/RcloneBrowser/releases/latest | grep "linux-x86_64.AppImage" | cut -d : -f 2,3 | tr -d \")

# Download OnlyOffice-Desktop
echo "
#####################################################################################################    
                            Download OnlyOffice-Desktop appimage
######################################################################################################
"
wget https://download.onlyoffice.com/install/desktop/editors/linux/DesktopEditors-x86_64.AppImage

# Install MegaSync
echo "
#####################################################################################################    
                            Install Megasync
######################################################################################################
"
if [ "$(cat /etc/lsb-release | head -"3" | tail -1 | cut -d '=' -f 2)" = "bionic" ];then
	wget https://mega.nz/linux/MEGAsync/xUbuntu_18.04/amd64/megasync-xUbuntu_18.04_amd64.deb
    sudo dpkg -i ./megasync-xUbuntu_18.04_amd64.deb && sudo apt-get install -f && rm -rf *.deb
else
	wget https://mega.nz/linux/MEGAsync/xUbuntu_20.04/amd64/megasync-xUbuntu_20.04_amd64.deb
    sudo apt install ./megasync-xUbuntu_20.04_amd64.deb && rm -rf *.deb
fi
sudo apt --fix-broken install -y && rm -rf *.deb

# Install Heroku cli
echo "
#####################################################################################################    
                            Install Heroku CLI
######################################################################################################
"
curl https://cli-assets.heroku.com/install.sh | sh

# Install nodejs and npm
echo "
#####################################################################################################    
                            Install nodejs & npm
######################################################################################################
"
sudo apt-get install -y nodejs npm

# Install pip3 
echo "
#####################################################################################################    
                            Install pip3
######################################################################################################
"
sudo apt-get install -y python3-pip

# Install virutalbox and extension pack
echo "
#####################################################################################################    
                            Install virtualbox & exension pack
######################################################################################################
"
sudo apt-get update && sudo apt-get install -y virtualbox

# Git setup
echo "
#####################################################################################################    
                            Git config
######################################################################################################
"
git config --global user.name "Gautham Prakash" && git config --global user.email "gauthamp10@gmail.com"

# Install ProtonVPN Cli
echo "
#####################################################################################################    
                            Install protonvpn-cli
######################################################################################################
"
sudo apt install -y openvpn dialog python3-pip python3-setuptools && sudo pip3 install protonvpn-cli

# Install docker
echo "
#####################################################################################################    
                            Install docker
######################################################################################################
"
sudo apt update
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
if [ "$(cat /etc/lsb-release | head -"3" | tail -1 | cut -d '=' -f 2)" = "bionic" ];then
    sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
else
    sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
fi    
    sudo apt update
    sudo apt install -y docker-ce
    sudo usermod -aG docker ${USER}
    su - ${USER}

# Install media codecs
echo "
#####################################################################################################    
                            Install media codecs
######################################################################################################
"
sudo apt install -y ubuntu-restricted-extras

# Removing unwanted files
echo "
#####################################################################################################    
                            Remove unwanted files 
######################################################################################################
"
sudo apt-get autoremove && sudo apt-get clean -y && sudo apt-get autoclean -y

echo "
#####################################################################################################    
                            System reboot
######################################################################################################
"
sudo reboot
