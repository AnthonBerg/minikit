cat /etc/apt/sources.list | grep -v sid.updates | grep -v updates | grep -v security.debian.org | grep -v backports | sed -r s/wheezy/sid/g | sudo tee /etc/apt/sources.list.d/sid.list
sudo cp pinning /etc/apt/preferences.d

apt-fast update

