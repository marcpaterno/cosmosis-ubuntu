# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.

Vagrant.configure(2) do |config|

  config.vm.network :forwarded_port, guest: 22, host: 2000

  # The most common configuration options are documented and commented below.
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.

  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://atlas.hashicorp.com/search.
  config.vm.box = "ubuntu/trusty64"

  # Share an additional folder to the guest VM. The first argument is
  # the path on the host to the actual folder. The second argument is
  # the path on the guest to mount the folder. And the optional third
  # argument is a set of non-required options.
  # config.vm.synced_folder "../data", "/vagrant_data"

  config.vm.provider "virtualbox" do |vb|
    vb.memory = 1024 * 4
    vb.cpus = 6
  end

  config.vm.provision "shell", inline: <<-SHELL
  sudo apt-get -y update
  sudo apt-get -y install lsb-release curl gcc g++ gcc-multilib emacs24-nox git pkg-config libpng12-dev libfreetype6-dev
  sudo apt-get -y install tcl-dev tk-dev cvs texinfo  libcurl4-openssl-dev libexpat1-dev libtk8.6 libtcl8.6 gettext autoconf dpkg-dev lsb-core libbz2-dev libgdbm-dev liblzma-dev libreadline-dev libgl1-mesa-dev libglu1-mesa-dev libX11-dev libXmu-dev libxpm-dev libxft-dev libxext-dev subversion
  sudo apt-get -y install --install-recommends linux-generic-lts-vivid
  sudo apt-get -y install build-essential man vim autoconf libtool
  git clone https://github.com/singularityware/singularity.git
  cd singularity
  ./autogen.sh
  ./configure --prefix=/usr/local
  make
  sudo make install
  sudo apt-get -y autoremove
SHELL
end
