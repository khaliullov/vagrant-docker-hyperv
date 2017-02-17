# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
ENV['VAGRANT_DEFAULT_PROVIDER'] = 'docker'

Vagrant.configure("2") do |config|
  config.vm.provider "docker" do |docker|
    docker.force_host_vm = false
    docker.has_ssh = true
    docker.image = "dev-ubuntu"
    docker.ports = [ "2222:22" ]
    config.ssh.host = '127.0.0.1'
    config.ssh.port = 2222
  end
end
