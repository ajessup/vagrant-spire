pluginName = "upstream_ca" //needs to match the name used in plugin serverConfig

pluginCmd = "/home/vagrant/code/go/bin/upstreamca-memory"
pluginChecksum = ""
enabled = true
pluginType = "UpstreamCA"
pluginData {
  trust_domain = "example.org"
  ttl = "1h"
  key_file_path = "/home/vagrant/code/go/src/github.com/spiffe/spire/plugin/server/upstreamca-memory/pkg/_test_data/keys/private_key.pem"
  cert_file_path = "/home/vagrant/code/go/src/github.com/spiffe/spire/plugin/server/upstreamca-memory/pkg/_test_data/keys/cert.pem"
}
