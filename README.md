# Forgejo Runner
This role installs the Forgejo Runner on a system of your choosing, it requires the system to be configured with Podman and it will allow testing Ansible roles (among other things no doubt).

## Requirements

* Fully configured and functioning Podman installation on your server
* Fully functional Forgejo instance (you need to get a registration token from it)

## Usage

1. Get a registration token from Forgejo by going to https://gitea.example.nl/admin/actions/runners
2. Configure the role, see [defaults/main.yml] for more details
3. Run the role
4. Presto!
