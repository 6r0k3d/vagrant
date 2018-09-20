# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "bento/ubuntu-18.04"
  config.vm.box_download_checksum = "309c3acf97b390412cfcf8a97f5ebcf2e128cb5dc662db1729d65ad337b2b47b"
  config.vm.box_download_checksum_type = "sha256"
  config.vm.hostname = "techcrucible"

  # Provider-specific configuration for VirtualBox:
  config.vm.provider "virtualbox" do |vb|
     # Display the VirtualBox GUI when booting the machine
     vb.gui = true

	 # Customize the amount of memory on the VM:
	 vb.memory = "2048"
	
	 # Configure virtualbox video memory
	 vb.customize ["modifyvm", :id, "--vram", "12"]
   end

   config.vm.provision :shell, path: "bootstrap.sh"
end
