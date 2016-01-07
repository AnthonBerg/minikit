cat /etc/apt/sources.list | grep -v sid.updates | grep -v security.debian.org | sed -r s/jessie/stretch/g | sudo tee /etc/apt/sources.list.d/stretch.list
sudo cp pinning /etc/apt/preferences.d

apt-fast update

