# Vagrantfile
Vagrant.configure("2") do |config|
  
  # Define the box you want to use
  # Note: You need a Windows 10 base box. The following URL is an example, you'll need a valid box or create your own.
  config.vm.box = "gusztavvonszombor/win10"

  # Assign resources to the VM
  config.vm.provider "virtualbox" do |vb|
    vb.memory = "4096" # Memory in MB
    vb.cpus = 2 # Number of CPUs
  end

  # Network configuration
  config.vm.network "forwarded_port", guest: 3389, host: 5000 # RDP
end
