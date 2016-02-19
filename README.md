# Consul-config Docker image

This Docker image will use confd with Rancher backend, to will parse the template and replace some values from the metadata of Ranchercontainers, the values will include the following:

- ca certificate.
- consul certificates and keys.
- turning bootstrap on/off, only if the container is the first container in the cluster.
- gossip key.
