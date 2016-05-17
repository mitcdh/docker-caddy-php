# Docker Caddy Server + PHP-FPM

Docker base image for a Caddy web server running on [AlpineLinux](http://alpinelinux.org).

Includes the git feature and runs as the `web-srv` user. 

Installs php-fpm with a config intended to be invoked from a Caddyfile `startup` command.

### Usage
````bash
docker pull mitcdh/caddy-php
````

### Structure
* `/www`: Web root

### Exposed Ports
* `2015`: http web server

### Credits
* [abiosoft](https://github.com/abiosoft) for [caddy-docker](https://github.com/abiosoft/caddy-docker) which the caddy curl was based on.
