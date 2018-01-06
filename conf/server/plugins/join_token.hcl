pluginName = "join_token" //needs to match the name used in plugin serverConfig

pluginCmd = "/home/vagrant/code/go/src/github.com/spiffe/spire/plugin/server/nodeattestor-jointoken/nodeattestor-jointoken"
pluginChecksum = ""
enabled = true
pluginType = "NodeAttestor" //needs to match the handshake
pluginData {
	trust_domain = "example.org"
}