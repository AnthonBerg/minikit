cat /etc/apt/sources.list | grep -v sid.updates | grep -v security.debian.org | sed -r s/jessie/experimental/g | sudo tee /etc/apt/sources.list.d/sid.list

apt-fast update

