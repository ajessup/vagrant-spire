pluginName = "ca" //needs to match the name used in plugin serverConfig

pluginCmd = "/home/vagrant/code/go/src/github.com/spiffe/spire/plugin/server/ca-memory/ca-memory"
pluginChecksum = ""
enabled = true
pluginType = "ControlPlaneCA"
pluginData {
  trust_domain = "example.org",
  key_size = 2048,
  ttl = "1h",
  cert_subject = {
    Country = ["US"],
    Organization = ["SPIFFE"],
    CommonName = "",
  }
}
