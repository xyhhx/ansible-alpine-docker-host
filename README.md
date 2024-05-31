<div align="center">

# Alpine Linux Docker Host Playbook

Canonical Source: https://git.sr.ht/~xyhhx/ansible-alpine-docker-host

Mirrors:
[Github](https://github.com/xyhhx/ansible-alpine-docker-host) | [Codeberg](https://codeberg.org/xyhhx/ansible-kicksecure-docker-host)

</div>

Use these playbooks to configure an Alpine Linux host to run Docker. It features some basic hardening.

This was designed to be used with a KVM/QEMU based virtual machine, but you can modify it quite easily for your needs.

## Usage

### Prerequisites

You need a Linux (or Unix) system with only a few things preinstalled:

- [GNU Make](https://www.gnu.org/software/make/)
- [Ansible](https://www.ansible.com)

#### Prerequisites

- Your Alpine host should have `python3` installed
- You should have root access to the server

### Set up

1. Generate a random word for my privileged user's username (security through obscurity bla bla bla)
1. Generate an Ed25519 SSH key, take note of the public key
1. Set up the environment vars like so:

    ```sh
    cp .env.example .env
    # Fill out the env vars
    $EDITOR .env
    ```

1. Finally, install the required Ansible Galaxy collections

    ```sh
    make install-requirements
    ```

### Running the playbooks

Just run the following commands and it should just set everything up for ya

```sh
make playbook privileged-user # Only run once
make up
```
