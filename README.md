# Exit node playbook

Base playbook to set up a Debian box to be a [tailscale exit node](https://tailscale.com/docs/features/exit-nodes).

## Running

```bash
ssh-copy-id `#ip`
ansible-playbook master.yml -e tailscale_authkey=`#key` -e ansible_host=`#ip`
# Advertise as an exit node: https://login.tailscale.com/admin/machines
# Run again
ansible-playbook master.yml --tags tailscale
```

Firewall rules (& drift management) are handled externally by [OpenVox](https://voxpupuli.org/openvox/).
