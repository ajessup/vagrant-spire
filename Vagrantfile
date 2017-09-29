Vagrant.configure("2") do |config|
  config.vm.define "server" do |server|
    server.vm.box = "ubuntu/trusty64"
    server.vm.hostname = "server"
    server.vm.network "private_network", ip: "192.168.99.10"
    server.vm.network "forwarded_port", guest:8080, host: 8080
    server.vm.provision "file", source: "git-config", destination: "$HOME/.gitconfig"
    server.vm.provision "file", source: "github-private-key", destination: "$HOME/.ssh/gitHubKey"
    server.vm.provision :ansible do |ansible|
      ansible.playbook = "spire.yaml"
    end
  end

  config.vm.define "node" do |node|
    node.vm.box = "ubuntu/trusty64"
    node.vm.hostname = "node"
    node.vm.network "private_network", ip: "192.168.99.11"
    node.vm.provision "file", source: "git-config", destination: "$HOME/.gitconfig"
    node.vm.provision "file", source: "github-private-key", destination: "$HOME/.ssh/gitHubKey"
    node.vm.provision :ansible do |ansible|
      ansible.playbook = "spire.yaml"
    end
  end
end