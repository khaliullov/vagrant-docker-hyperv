Vagrant, Docker and Hyper-V
===========================

Example Vagrantfile, showing how to use Vagrant on Windows with Docker
installed over buildin Hyper-V on Windows 10 Pro.

Prerequisites
-------------

1. Enable Hyper-V in Windows.
2. Install Docker for Windows
3. Install Vagrant
4. Build Docker image
5. Run `vagrant up`

Build Docker image
------------------

    nmake build

or just

    docker build -t dev-ubuntu --no-cache=true .

Bringing Vagrant up
-------------------

    nmake up

or just

    vagrant up

Destroying Vagrant box
----------------------

    nmake destroy

or just

    vagrant destroy -f

