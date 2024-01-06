# ansible-hysteria

Ansible roles for setting up
[Hysteria](https://github.com/apernet/hysteria).

## Roles

### hysteria

Setup one or more Hysteria instances [using Docker](https://hub.docker.com/r/tobyxdd/hysteria).

This role handles instance removals as well.

| Variable                                                  | Required | Description |
|-----------------------------------------------------------|:--------:|-------------|
| `hysteria_instances`                                      | ✔        | List of Hysteria instances to run. |
| `hysteria_instances[].name`                               | ✔        | Title of the instance. |
| `hysteria_instances[].version`                            | ✔        | Docker image [tag](https://hub.docker.com/r/tobyxdd/hysteria/tags) to use. |
| `hysteria_instances[].type`                               | ✔        | Hysteria's mode of operation. Possible values are `client` and `server`. |
| `hysteria_instances[].config`                             | ✔        | Hysteria's configuration object. |
| `hysteria_instances[].container_name`                     |          | Name of the container. Defaults to the value of `hysteria_instances[].name`. |
| `hysteria_instances[].restart`                            |          | Restart policy of the container. Default: `unless-stopped`. |
| `hysteria_instances[].ports`                              |          | List of ports of the container to expose. Default: `[]`. |
| `hysteria_instances[].volumes`                            |          | List of extra volumes for the container. Default: `[]`. |
| `hysteria_instances[].compose`                            |          | Map of extra configs to append to docker compose. Default: `{}`. |
| `hysteria_instances[].compose_hysteria`                   |          | Map of extra configs to append to docker compose hysteria service. Default: `{}`. |
| `hysteria_instances[].compose_services`                   |          | Map of extra configs to append to docker compose services. Default: `{}`. |
| `hysteria_instances[].compose_project_name`               |          | Name of the docker compose project. Defaults to the value of `hysteria_instances[].name`. |
| `hysteria_instances[].compose_version`                    |          | Version of the docker compose file. Default: `'3.8'` |
| `hysteria_lib_dir`                                        |          | Where to put docker files, configs, etc. Default: `/var/lib/ansible-hysteria` |
