#!/bin/bash
set -x

sudo apt-get update -y
sudo apt-get install exiftool strings ghex binwalk steghide zbar-tools zbarcam gnupg stegsnow -y
sudo apt install libimage-exiftool-perl -y
sudo apt install pngcheck python python-pip python3-pip python-scapy ipython ipython3 -y
sudo apt install snapd fcrackzip pdfcrack -y
sudo snap install john-the-ripper -y
sudo apt install ruby -y
sudo gem install zsteg -y
pip install Pillow 
python3 -m pip install Pillow

sudo add-apt-repository ppa:webupd8team/java
sudo apt update 
sudo apt install oracle-java8-installer -y
sudo apt install oracle-java8-set-default -y


echo("Installing stegsolve.jar")
wget http://www.caesum.com/handbook/Stegsolve.jar -O stegsolve.jar
sudo chmod +x stegsolve.jar

echo("Downloading rockyou.txt")
wget https://github.com/brannondorsey/naive-hashcat/releases/download/data/rockyou.txt

echo("Downloading tweekpng")
wget http://entropymine.com/jason/tweakpng/tweakpng-1.4.6.zip

sudo add-apt-repository ppa:ubuntuhandbook1/audacity
sudo apt-get update -y
sudo apt-get install audacity -y

sudo apt-get install git -y
git clone https://github.com/jesparza/peepdf.git

sudo wget -O /usr/bin/jsteg https://github.com/lukechampine/jsteg/releases/download/v0.1.0/jsteg-linux-amd64
sudo chmod +x /usr/bin/jsteg
sudo wget -O /usr/bin/slink https://github.com/lukechampine/jsteg/releases/download/v0.2.0/slink-linux-amd64
sudo chmod +x /usr/bin/slink

sudo add-apt-repository ppa:wireshark-dev/stable
sudo apt-get update -y
sudo apt-get install wireshark -y
sudo apt-get install ppa-purge && sudo ppa-purge ppa:wireshark-dev/stable

sudo apt-get update -y
sudo apt-get install -y tshark

sudo apt install default-jre -y       
sudo apt install openjdk-11-jre-headless -y
sudo apt install openjdk-8-jre-headless -y
sudo apt install default-jdk -y
sudo apt install openjdk-11-jdk-headless -y
sudo apt install ecj -y
sudo apt install openjdk-8-jdk-headless -y

wget https://dl.winehq.org/wine-builds/Release.key && sudo apt-key add Release.key
sudo apt-add-repository https://dl.winehq.org/wine-builds/ubuntu/
sudo dpkg --add-architecture i386
sudo apt-get update && sudo apt-get install --install-recommends wine-devel

# If getting error in Wine Installation. uncomment the folliwing lines.

# sudo apt-add-repository --remove 'deb https://download.opensuse.org/repositories/Emulators:/Wine:/Debian/Ubuntu_18.10_standard ./'
# wget -nc https://dl.winehq.org/wine-builds/Release.key
# sudo apt-key add Release.key
# sudo apt-add-repository https://dl.winehq.org/wine-builds/ubuntu/
# sudo apt-get update
# sudo apt-get install --install-recommends winehq-stable
