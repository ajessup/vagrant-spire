Vagrant.configure("2") do |config|
  config.vm.define "server" do |server|
    server.vm.box = "ubuntu/trusty64"
    server.vm.hostname = "server"
    server.vm.network "private_network", ip: "192.168.99.10"
    server.vm.synced_folder  "/Users/jessup/go/src/github.com/spiffe/spire", "/mnt/spire",
      id: "spire-server"
  end

#  config.vm.define "node" do |node|
#    node.vm.box = "ubuntu/trusty64"
#    node.vm.hostname = "node"
#    node.vm.network "private_network", ip: "192.168.99.11"
#    node.vm.provision :ansible do |ansible|
#      ansible.playbook = "spire.yaml"
#    end
#    node.vm.synced_folder ".", "/vagrant/",
#      id: "default"
#    node.vm.synced_folder  "/Users/jessup/go/src/github.com/spiffe/spire", "/mnt/spire",
#      id: "spire-node"
#    node.vm.synced_folder  "/Users/jessup/go/src/github.com/ajessup/spiffe-helper", "/mnt/spiffe-helper",
#      id: "helper"
#  end

  config.vm.provider 'virtualbox' do |vb|
    vb.customize [ "guestproperty", "set", :id, "/VirtualBox/GuestAdd/VBoxService/--timesync-set-threshold", 1000 ]
  end
end