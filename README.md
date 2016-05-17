# Docker Caddy Server

Docker base image for a Caddy web server running on [AlpineLinux](http://alpinelinux.org).

Includes the git feature and runs as the `web-srv` user. Assigns the caddy binary the `cap_net_bind_service` capability.

### Usage
````bash
docker pull mitcdh/caddy
````

### Structure
* `/www`: Web root

### Exposed Ports
* `2015`: http web server

### Credits
* [abiosoft](https://github.com/abiosoft) for [caddy-docker](https://github.com/abiosoft/caddy-docker) which the caddy curl was based on.