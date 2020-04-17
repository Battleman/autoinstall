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
