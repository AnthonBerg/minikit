cat /etc/apt/sources.list | grep -v sid.updates | grep -v security.debian.org | sed -r s/jessie/sid/g | tee /etc/apt/sources.list.d/sid.list
cp pinning_stable-jessie-sid /etc/apt/preferences.d

apt-get update

