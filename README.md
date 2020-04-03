![Gearbox](https://gearboxworks.github.io/assets/images/gearbox-logo.png)


# mysql Docker container service for [Gearbox](https://github.com/gearboxworks/)
This is the repository for the [mysql](https://www.mysql.com/) Docker container implemented for [Gearbox](https://github.com/gearboxworks/).


## Repository Info
GitHub commit: ![commit-date](https://img.shields.io/github/last-commit/gearboxworks/docker-mysql?style=flat-square)

GitHub release(latest): ![last-release-date](https://img.shields.io/github/release-date/gearboxworks/docker-mysql) ![last-release-date](https://img.shields.io/github/v/tag/gearboxworks/docker-mysql?sort=semver) [![release-state](https://github.com/gearboxworks/docker-mysql/workflows/release/badge.svg?event=release)](https://github.com/gearboxworks/docker-mysql/actions?query=workflow%3Arelease)


## Supported versions and respective Dockerfiles
| Service | GitHub Version | Docker Version | Docker Size | Docker Tags |
| ------- | -------------- | -------------- | ----------- | ----------- |
| [mysql](https://www.mysql.com/) | ![mysql](https://img.shields.io/badge/mysql-5.5.62-green.svg) | [![Docker Version)](https://img.shields.io/docker/v/gearboxworks/mysql/5.5.62)](https://hub.docker.com/repository/docker/gearboxworks/mysql) | [![Docker Size](https://img.shields.io/docker/image-size/gearboxworks/mysql/5.5.62)](https://hub.docker.com/repository/docker/gearboxworks/mysql) | _([`5.5.62`, `5.5`](https://github.com/gearboxworks/docker-mysql/blob/master/versions/5.5.62/DockerfileRuntime))_ |
| [mysql](https://www.mysql.com/) | ![mysql](https://img.shields.io/badge/mysql-5.6.47-green.svg) | [![Docker Version)](https://img.shields.io/docker/v/gearboxworks/mysql/5.6.47)](https://hub.docker.com/repository/docker/gearboxworks/mysql) | [![Docker Size](https://img.shields.io/docker/image-size/gearboxworks/mysql/5.6.47)](https://hub.docker.com/repository/docker/gearboxworks/mysql) | _([`5.6.47`, `5.6`](https://github.com/gearboxworks/docker-mysql/blob/master/versions/5.6.47/DockerfileRuntime))_ |
| [mysql](https://www.mysql.com/) | ![mysql](https://img.shields.io/badge/mysql-5.7.29-green.svg) | [![Docker Version)](https://img.shields.io/docker/v/gearboxworks/mysql/5.7.29)](https://hub.docker.com/repository/docker/gearboxworks/mysql) | [![Docker Size](https://img.shields.io/docker/image-size/gearboxworks/mysql/5.7.29)](https://hub.docker.com/repository/docker/gearboxworks/mysql) | _([`5.7.29`, `5.7`](https://github.com/gearboxworks/docker-mysql/blob/master/versions/5.7.29/DockerfileRuntime))_ |
| [mysql](https://www.mysql.com/) | ![mysql](https://img.shields.io/badge/mysql-8.0.19-green.svg) | [![Docker Version)](https://img.shields.io/docker/v/gearboxworks/mysql/8.0.19)](https://hub.docker.com/repository/docker/gearboxworks/mysql) | [![Docker Size](https://img.shields.io/docker/image-size/gearboxworks/mysql/8.0.19)](https://hub.docker.com/repository/docker/gearboxworks/mysql) | _([`8.0.19`, `8.0`, `latest`](https://github.com/gearboxworks/docker-mysql/blob/master/versions/8.0.19/DockerfileRuntime))_ |


## About this container.
A driving force behind [Gearbox](https://github.com/gearboxworks/) is to improve the user experience using software, and especially for software developers.

Our vision is to empower developers and other software users to quickly and easily use almost any version of a software service, command line tool or API without without first getting bogged down with installation and configuration.

In other words, our vision for [Gearbox](https://github.com/gearboxworks/) users is that software "**just works**".


## Using this container.
This container has been designed to work within the [Gearbox](https://github.com/gearboxworks/) framework.
However, due to the flexability of Gearbox, it can be used outside of this framework.

There are three methods:

## Method 1: Using gb-launch
`gb-launch` is a tool specifically designed to interact with a Gearbox Docker container.

It provides three important functional areas, without any Docker container learning curve:
- Allows control over Gearbox Docker containers: stop, start, create, remove.
- Build, update, modify and release Docker images.
- Acts as a proxy for interactive commands within a Gearbox Docker container.

It also provides a functional SSH daemon for connecting remotely as well as a standard set of common tools and utilities.


### Setup from GitHub repo
`gb-launch` is currently in beta testing and is included along with all Gearbox Docker repos.
Once out of beta, it will be included within the Gearbox installation package.

For now, simply clone this repository to your local machine.

`git clone https://github.com/gearboxworks/docker-mysql.git`

### Running gb-launch
There are many ways to call gb-launch, either directly or indirectly.
Additionally, all host environment variables will be imported into the container seamlessly.
This allows a devloper to try multiple versions of software as though they were installed locally.

If a container is missing, it will be downloaded and created. Multiple versions can co-exist.

Create, and start the mysql Gearbox container.

`./bin/gb-launch -gb-name mysql`

Create, and start the mysql Gearbox container. Run a shell.

`./bin/gb-launch -gb-name mysql -gb-shell`

Create, and start the mysql Gearbox container with version 5.7.29 and run a shell.

`./bin/gb-launch -gb-name mysql -gb-version 5.7.29 -gb-shell`

If mysql is symlinked to `gb-launch`, then you can drop the `-gb-name` flag.

`./bin/mysql`

Running mysql Gearbox container default command. If a container has a default interactive command, arguments can be supplied without specifying that command.

`./bin/mysql -flag1 -flag2 variable`

`./bin/gb-launch -gb-name mysql -gb-version 5.7.29 -flag1 -flag2 variable`


Running alternate commands within the mysql Gearbox container.

`./bin/mysql -gb-shell -- ls -l`

`./bin/gb-launch -gb-name mysql -gb-version 5.7.29 -gb-shell -- ls -l`

`./bin/mysql -gb-shell -- ps -eaf`

`./bin/gb-launch -gb-name mysql -gb-version 5.7.29 -gb-shell -- ps -eaf`


ssh - All [Gearbox](https://github.com/gearboxworks/) containers have a running SSH daemon. So you can connect remotely.
To show what ports are exported to the host.

`./bin/gb-launch -gb-name mysql -gb-list`


## Method 2: GitHub repo

### Setup from GitHub repo
Simply clone this repository to your local machine

`git clone https://github.com/gearboxworks/docker-mysql.git`

### Building from GitHub repo
`make build` - Build Docker images. Build all versions from the base directory or specific versions from each directory.

`make list` - List already built Docker images. List all versions from the base directory or specific versions from each directory.

`make clean` - Remove already built Docker images. Remove all versions from the base directory or specific versions from each directory.

`make push` - Push already built Docker images to Docker Hub, (only for Gearbox admins). Push all versions from the base directory or specific versions from each directory.

### Runtime from GitHub repo
You can either build your container as above, or use it from DockerHub with these commands:

`make start` - Spin up a Docker container with the correct runtime configs.

`make stop` - Stop a Docker container.

`make run` - Run a Docker container in the foreground, (all STDOUT and STDERR will go to console). The Container be removed on termination.

`make shell` - Run a shell, (/bin/bash), within a Docker container.

`make rm` - Remove the Docker container.

`make test` - Will issue a `stop`, `rm`, `clean`, `build`, `create` and `start` on a Docker container.


## Method 3: Docker Hub

### Setup from Docker Hub
A simple `docker pull gearbox/mysql` will pull down the latest version.

### Starting
start - Spin up a Docker container with the correct runtime configs.

`docker run -d --name mysql-latest --restart unless-stopped --network gearboxnet gearbox/mysql:latest`

### Stopping
stop - Stop a Docker container.

`docker stop mysql-latest`

### Remove container
rm - Remove the Docker container.

`docker container rm mysql-latest`

### Run in foreground
run - Run a Docker container in the foreground, (all STDOUT and STDERR will go to console). The Container be removed on termination.

`docker run --rm --name mysql-latest --network gearboxnet gearbox/mysql:latest`

### Run a shell
shell - Run a shell, (/bin/bash), within a Docker container.

`docker run --rm --name mysql-latest -i -t --network gearboxnet gearbox/mysql:latest /bin/bash`

### SSH
ssh - All [Gearbox](https://github.com/gearboxworks/) containers have a running SSH daemon. So you can connect remotely.

Either use `gb-launch` above or discover the port and SSH directly.


```
SSH_PORT="$(docker port mysql-latest 22/tcp | sed 's/0.0.0.0://')"
ssh -p ${SSH_PORT} -o StrictHostKeyChecking=no gearbox@localhost
```

