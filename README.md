# Docker Caddy Server

Docker base image for a Caddy web server running on [AlpineLinux](http://alpinelinux.org).

Includes the git feature and runs as the `web-srv` user.

### Usage
#### Base web server
````bash
docker pull mitcdh/caddy
````

#### With PHP-FPM
````bash
docker pull mitcdh/caddy:php
````

Includes a php-fpm config intended to be run as web-srv from a Caddyfile `startup` directive.

### Structure
* `/www`: Web root

### Exposed Ports
* `2015`: http web server

### Credits
* [abiosoft](https://github.com/abiosoft) for [caddy-docker](https://github.com/abiosoft/caddy-docker) which the caddy curl was based on.
