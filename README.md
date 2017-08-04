# Consul-config Docker image

This Docker image will use confd with Rancher backend, to will parse the template and replace some values from the metadata of Ranchercontainers, the values will include the following:

- ca certificate
- consul certificates and keys.
- bootstrap_expect - numbers of nodes to bootstrap. should be 3 or 5
- gossip key.

If acl.enabled is true, acl.master_token and acl.agent_token should be provided. After cluster is up, you must add rules for agent token:

# Create agent.json with the following content
{
  "ID":"### YOUR AGENT TOKEN ###",
  "Name": "agent",
  "Type": "client",
  "Rules": "node \"\" {policy = \"write\"} service \"\" {policy = \"write\"}"
}

# Upload it to consul. Replace consul host and master_token with yours.
curl -X PUT -d @agent.json http://consul/v1/acl/create\?token\=<master_token_here>
