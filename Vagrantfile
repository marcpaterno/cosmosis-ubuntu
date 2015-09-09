# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.

Vagrant.configure(2) do |config|
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
  sudo apt-get -y install curl
  sudo apt-get -y install gcc
  sudo apt-get -y install g++
  sudo apt-get -y install emacs24-nox
  sudo apt-get -y install git
  sudo apt-get -y install pkg-config
  sudo apt-get -y install libpng12-dev
  sudo apt-get -y install libfreetype6-dev
  sudo apt-get -y autoremove
SHELL
end
