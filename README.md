# koonix.hysteria

Collection of Ansible roles for setting up
[Hysteria](https://github.com/apernet/hysteria).

## Roles

### hysteria

Setup one or more Hysteria instances [using Docker](https://hub.docker.com/r/tobyxdd/hysteria).

| Variable                                                  | Required | Description |
|-----------------------------------------------------------|:--------:|-------------|
| `hysteria_instances`                                      | ✔        | List of instances of Hysteria to configure and run. |
| `hysteria_instances[].name`                               | ✔        | Title of the Hysteria instance. |
| `hysteria_instances[].version`                            | ✔        | Docker image [tag](https://hub.docker.com/r/tobyxdd/hysteria/tags) to use. |
| `hysteria_instances[].config`                             | ✔        | Hysteria's configuration object. |
| `hysteria_instances[].compose_project_name`               |          | Name of the docker compose project. Set to an empty string to not explicitly define. Defaults to the value of `hysteria_instances[].instance_name`. |
| `hysteria_instances[].container_name`                     |          | Name of Hysteria's docker container. Set to an empty string to not explicitly define. Defaults to the value of `hysteria_instances[].instance_name`. |
| `hysteria_instances[].ports`                              |          | List of extra docker port mappings for Hysteria's docker container. Default: `[]`. |
| `hysteria_instances[].volumes`                            |          | List of extra docker volume bindings for Hysteria's docker container. Default: `[]`. |
| `hysteria_instances[].compose_volumes`                    |          | Map of extra configs to append to docker compose volume specifications. Default: `{}`. |
| `hysteria_instances[].compose_services_hysteria`          |          | Map of extra configs to append to docker compose hysteria service. Default: `{}`. |
| `hysteria_instances[].compose_services`                   |          | Map of extra configs to append to docker compose services. Default: `{}`. |
| `hysteria_instances[].compose`                            |          | Map of extra configs to append to docker compose. Default: `{}`. |
| `hysteria_lib_dir`                                        |          | Where to put docker files, configs, etc. Default: `/var/lib/ansible-hysteria` |
