# koonix.hysteria

Collection of Ansible roles for setting up
[Hysteria](https://github.com/apernet/hysteria).

## Roles

### hysteria-server

Setup a Hysteria server [in Docker](https://hub.docker.com/r/tobyxdd/hysteria).

All container ports from 10000 to 60000 are forwarded to Hysteria,
so you can publish multiple ports and port ranges.

| Variable                                               | Required | Description |
|--------------------------------------------------------|:--------:|-------------|
| `hysteria_server_version`                              | ✔        | Docker image [tag](https://hub.docker.com/r/tobyxdd/hysteria/tags) to use. |
| `hysteria_server_config`                               | ✔        | Hysteria's configuration object. |
| `hysteria_server_ports_appendix`                       |          | List of extra docker port mappings for Hysteria's docker container. Default: `[]`. |
| `hysteria_server_volumes_appendix`                     |          | List of extra docker volume bindings for Hysteria's docker container. Default: `[]`. |
| `hysteria_server_compose_volumes_appendix`             |          | Extra configs to append to docker compose volume specifications. Default: `{}`. |
| `hysteria_server_compose_services_hysteria_appendix`   |          | Extra configs to append to docker compose hysteria service. Default: `{}`. |
| `hysteria_server_compose_services_appendix`            |          | Extra configs to append to docker compose services. Default: `{}`. |
| `hysteria_server_compose_appendix`                     |          | Extra configs to append to docker compose. Default: `{}`. |
| `hysteria_server_lib_dir`                              |          | Where to put docker files, configs, etc. Default: `/var/lib/ansible-hysteria-server` |

### hysteria-client

Setup a Hysteria client [in Docker](https://hub.docker.com/r/tobyxdd/hysteria).

| Variable                                               | Required | Description |
|--------------------------------------------------------|:--------:|-------------|
| `hysteria_client_version`                              | ✔        | Docker image [tag](https://hub.docker.com/r/tobyxdd/hysteria/tags) to use. |
| `hysteria_client_config`                               | ✔        | Hysteria's configuration object. |
| `hysteria_client_ports_appendix`                       |          | List of extra docker port mappings for Hysteria's docker container. Default: `[]`. |
| `hysteria_client_volumes_appendix`                     |          | List of extra docker volume bindings for Hysteria's docker container. Default: `[]`. |
| `hysteria_client_compose_volumes_appendix`             |          | Extra configs to append to docker compose volume specifications. Default: `{}`. |
| `hysteria_client_compose_services_hysteria_appendix`   |          | Extra configs to append to docker compose hysteria service. Default: `{}`. |
| `hysteria_client_compose_services_appendix`            |          | Extra configs to append to docker compose services. Default: `{}`. |
| `hysteria_client_compose_appendix`                     |          | Extra configs to append to docker compose. Default: `{}`. |
| `hysteria_client_lib_dir`                              |          | Where to put docker files, configs, etc. Default: `/var/lib/ansible-hysteria-client` |
