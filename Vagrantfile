# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
    config.vm.define "lilydev-base"
    config.vm.box = "ubuntu/trusty64"
    config.vm.host_name = "lilydev"

    config.vm.provider "virtualbox" do |vb|
        vb.gui = true
        vb.cpus = 2
        vb.memory = "2048"
        vb.customize ["modifyvm", :id, "--vram", "128"]
    end

    config.vm.provision "ansible" do |ans|
        ans.playbook = "minimal-lilydev.yml"
    end
end
