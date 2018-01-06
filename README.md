A Vagrantfile, with configuration for building and testing [SPIRE](https://github.com/spiffe/spire) across multiple VMs.

This Vagrantfile defines two nodes, `server` that runs the SPIRE server and `node` that runs the node agent. The configuration files under `server.conf` (for the `spire-server`, running on the `server` node) and `node.conf` (for the `spire-agent` running on the `node` node). When the machines are provisioned, the latest version of the `spire-server` and `spire-agent` will be built from head and installed. The two VMs share a private network. The Registration API on the node server is open on port 8080 of the host machine.

# Prerequisites

You'll need [Vagrant](https://www.vagrantup.com/) (with the VirtualBox provider) and [Ansible](https://www.ansible.com/) installed on your host machine.

# Usage
Where `$` is the host machine prompt, and `>` is the guest VM prompt.

Provision everything and start the server:
```
 $ vagrant up
 $ vagrant ssh server
 > cd /vagrant/server.conf/
 > spire-server run
```

Start the node running the agent:
```
 $ vagrant ssh node
 > cd /vagrant/node.conf/
 > spire-agent run --socketPath=/home/vagrant/sock1 &
```