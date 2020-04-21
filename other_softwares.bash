#linux headers
sudo apt install -y linux-headers-`uname -r`

#Discord
wget --trust-server-names --directory-prefix=/tmp "https://discordapp.com/api/download?platform=linux&format=deb"
sudo dpkg -i /tmp/disc*deb
sudo apt install -f -y

#Keeweb
wget --directory-prefix=/tmp  `wget --quiet https://api.github.com/repos/keeweb/keeweb/releases/latest -O- | grep deb | grep https | sed 's/^ *//g' | awk '{print $2}' | sed 's/\"//g'`
sudo dpkg -i /tmp/KeeWeb*.deb


#brave
sudo apt install apt-transport-https curl
curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add -
echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
sudo apt install -y brave-browser


#vscodium
wget --directory-prefix=/tmp  `wget --quiet -O- https://api.github.com/repos/VSCodium/vscodium/releases/latest | grep amd64 | grep browser | grep -v sha | sed 's/^ *//g' | awk '{print $2}' | sed 's/\"//g'`
sudo dpkg -i /tmp/codium*.deb
sudo apt install -f -y

#teamviewer
wget --directory-prefix=/tmp https://download.teamviewer.com/download/linux/teamviewer_amd64.deb
sudo dpkg -i /tmp/team*.deb
sudo apt install -f -y

#virtualbox
wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -
wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -
sudo apt update
sudo apt install -y virtualbox-6.1

#mkusb
sudo add-apt-repository ppa:mkusb/ppa
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 3729827454B8C8AC
sudo apt update
sudo apt insall -y mkusb

#chrome
sudo apt update
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 78BD65473CB3BD13
sudo apt update
sudo apt install -y google-chrome-stable

#lbry
wget --directory-prefix=/tmp  `wget --quiet -O- https://api.github.com/repos/lbryio/lbry-desktop/releases/latest | grep deb | grep browser | grep -v sha | sed 's/^ *//g' | awk '{print $2}' | sed 's/\"//g'`
sudo dpkg -i /tmp/LBRY*.deb
sudo apt install -f -y

wget --directory-prefix=/tmp https://repo.nordvpn.com/deb/nordvpn/debian/pool/main/nordvpn-release_1.0.0_all.deb
sudo dpkg -i /tmp/nordvpn*.deb
sudo apt install -f -y
sudo apt update
sudo apt install -y nordvpn

#youtube-dl
sudo wget https://yt-dl.org/downloads/latest/youtube-dl -O /usr/local/bin/youtube-dl
sudo chmod a+rx /usr/local/bin/youtube-dl
