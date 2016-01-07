#!/usr/bin/env sh

apt-get -y install lockfile-progs aria2
cp apt-fast/apt-fast /usr/local/bin
cp apt-fast/apt-fast.conf /etc

# add full repos to apt conf so unrar etc. is visible
sed -i 's/main$/main contrib non-free/' /etc/apt/sources.list
apt-fast update

apt-fast -y install vim dstat sudo colordiff git unzip zip aria2 tree p7zip-full --no-install-recommends screen lshw command-not-found tmux mosh sshfs ack-grep smartmontools colormake locate software-properties-common ethtool hdparm smartmontools lzop unrar atool

 apt-fast -y install unrar --no-install-recommends 

apt-file update
update-command-not-found

cp conf/vimrc.webfaction /etc/vim/vimrc

pushd sid
sh sidenable.fish
sh experimental.fish
popd

apt-fast install fish
