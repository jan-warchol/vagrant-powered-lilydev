Running LilyDev
---------------

Install [VirtualBox](https://www.virtualbox.org/) and
[Vagrant](https://www.vagrantup.com/).

Download [LilyDev Vagrant box]
(https://www.dropbox.com/s/xzv9iog9klhexgm/lilydev4.a02.box?dl=0) (around 1 GB).

Open command line and run the following commands in an empty directory:

    vagrant init lilydev4 <path to the box file>
    vagrant up

At this moment you can forget about Vagrant and use LilyDev just like any other
VM managed by VirtualBox.  The username and password is `vagrant`.



Building LilyDev
----------------

Of course you can also build the Vagrant box yourself.

### Requirements

* [VirtualBox](https://www.virtualbox.org/)
* [Vagrant](https://www.vagrantup.com/)
* [Ansible](http://docs.ansible.com/intro_installation.html#latest-releases-via-apt-ubuntu)

If you're using a 64-bit Debian-based Linux, you can install these programs
by running [`install-dev-requirements.sh`](install-dev-requirements.sh) script.


### Instructions

To build LilyDev Vagrant box, `cd` to this repository and run

    vagrant up
    vagrant package --vagrantfile files/default-lilydev-settings --output lilydev4.box
