# nix-community infrastructure

Welcome to the Nix Community infrastructure project. This project holds all the NixOS and Terraform configuration for this organization.

## Services

### `Community builder` - build01.nix-community.org

We provide an x86 build machine as a public remote builder for the nix community, this machine also has an aarch64 machine configured as its own remote builder.

See [here](roles/builder/README.md) for more information.

### `Continuous integration`

We provide x86 and aarch64 linux CI via these systems:

- `Hercules` - https://hercules-ci.com/github/nix-community

  - To enable hercules builds go to `https://hercules-ci.com/github/nix-community/$REPO` and click "Build this repository".

- `Hydra` - https://hydra.nix-community.org

  - To enable hydra builds add a new project in this [file](terraform/hydra-projects.tf).

### `Cache` - https://nix-community.cachix.org/

All of the above CI builds are pushed to the cache.

Thanks to Cachix for sponsoring our binary cache!

### `Search` - https://search.nix-community.org

Hound code search for NixOS and nix-community GitHub organisations.

### `nix-community.org DNS`

DNS is managed by terraform in this [file](terraform/cloudflare_nix-community_org.tf).

### `ryantm-updater bot`

- Docs: https://ryantm.github.io/nixpkgs-update
- Logs: https://r.ryantm.com/log/

### `nur-update`

## Support

For urgent matters, create an issue here: [New Issue](https://github.com/nix-community/infra/issues/new).

For repo additions, service requests and general conversation about governance and direction of the project, use the [Discussion forum](https://github.com/orgs/nix-community/discussions).

For casual chat, come join us in the [nix-community](https://matrix.to/#/#nix-community:nixos.org) room.

The admins can also be contacted via [admin@nix-community.org](mailto:admin@nix-community.org), email sent to this address will be forwarded to all of the admins.

### nix-community administrators

- [@Mic92](https://github.com/Mic92)
- [@adisbladis](https://github.com/adisbladis)
- [@ryantm](https://github.com/ryantm)
- [@zimbatm](https://github.com/zimbatm)
- [@zowoq](https://github.com/zowoq)

#### Role

The role of the administrators is to support the members of the org, and the Nix project in general.

#### Responsibilities

The administrators are responsible for serving the community to the best of their ability and availability.

They provide services such as:

- keep the systems updated and patched
- reply to user requests
- host new services that could help the project
- on-board new projects
- resolve conflict

The administrators are the only "owners" of the github organization.

#### Quorum of 5 rule

To reduce the attack surface on the project, the administrative team size is limited to 5 people.

## Hosts

See [HOSTS.md](HOSTS.md), this file also contains deployment details.
