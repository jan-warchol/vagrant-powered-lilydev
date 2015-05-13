# -*- mode: ruby -*-
# vi: set ft=ruby :

# This Vagrantfile describes how to build a base LilyDev VM,
# which is then exported to create a LilyDev Vagrant box.

Vagrant.configure(2) do |config|
    config.vm.define "lilydev-base"
    config.vm.host_name = "lilydev"

    # Vagrant box on which LilyDev is based
    config.vm.box = "ubuntu/trusty32"

    config.vm.provider "virtualbox" do |vb|
        vb.cpus = 2
        vb.memory = 2048
    end

    # tell Ansible to run tasks specified in minimal-lilydev.yml on the VM
    config.vm.provision "ansible" do |ans|
        ans.playbook = "minimal-lilydev.yml"
    end
end
