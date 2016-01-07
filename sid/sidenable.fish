cat /etc/apt/sources.list | grep -v sid.updates | grep -v security.debian.org | sed -r s/jessie/sid/g | sudo tee /etc/apt/sources.list.d/sid.list
sudo cp pinning /etc/apt/preferences.d

apt-fast update

