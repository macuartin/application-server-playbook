# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.define "virtual" do |virtual|

    # OS Configuration
    virtual.vm.box = "centos/7"

    #Network configuraions
    virtual.vm.network "public_network", ip: "192.168.0.17"

    # Hardware configurations
    virtual.vm.provider "virtualbox" do |vb|
      vb.gui = false
      vb.memory = "1024"
    end

  end

end