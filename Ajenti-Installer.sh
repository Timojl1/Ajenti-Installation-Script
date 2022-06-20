sudo apt update
sudo apt -y upgrade
wget https://launchpad.net/ubuntu/+source/pillow/4.1.1-3build2/+build/13243580/+files/python-imaging_4.1.1-3build2_all.deb
sudo apt update
sudo apt install python-olefile python-pil
sudo dpkg -i python-imaging_4.1.1-3build2_all.deb
sudo apt -y install gnupg2
wget http://repo.ajenti.org/debian/key -O- | sudo apt-key add -
echo "deb http://repo.ajenti.org/debian main main debian" | sudo tee /etc/apt/sources.list.d/ajenti.list
sudo apt update
sudo apt install ajenti
systemctl status ajenti
sudo systemctl enable ajenti
echo Ajenti will listen on HTTPS port 8000 by default
echo Default username : root
echo Default password : admin
echo Script by Timojl1
