![Gearbox](https://raw.githubusercontent.com/gearboxworks/gearboxworks.github.io/master/assets/images/gearbox-logo.png)


# mysql Docker container service for [Gearbox](https://github.com/gearboxworks/)
This is the repository for the [mysql](https://www.mysql.com/) Docker container implemented for [Gearbox](https://github.com/gearboxworks/).


## Repository Info
GitHub commit: ![commit-date](https://img.shields.io/github/last-commit/gearboxworks/docker-mysql?style=flat-square)

GitHub release(latest): ![last-release-date](https://img.shields.io/github/release-date/gearboxworks/docker-mysql) ![last-release-date](https://img.shields.io/github/v/tag/gearboxworks/docker-mysql?sort=semver) [![release-state](https://github.com/gearboxworks/docker-mysql/workflows/release/badge.svg?event=release)](https://github.com/gearboxworks/docker-mysql/actions?query=workflow%3Arelease)


## Supported versions and respective Dockerfiles
| Service | GitHub Version | Docker Version | Docker Size | Docker Tags |
| ------- | -------------- | -------------- | ----------- | ----------- |
| [mysql](https://www.mysql.com/) | ![mysql](https://img.shields.io/badge/mysql-5.5.62-green.svg) | ![Docker Version)](https://img.shields.io/docker/v/gearboxworks/mysql/5.5.62) | ![Docker Size](https://img.shields.io/docker/image-size/gearboxworks/mysql/5.5.62) | _([`5.5.62`, `5.5`](https://github.com/gearboxworks/docker-mysql/blob/master/5.5/DockerfileRuntime))_ |
| [mysql](https://www.mysql.com/) | ![mysql](https://img.shields.io/badge/mysql-5.6.47-green.svg) | ![Docker Version)](https://img.shields.io/docker/v/gearboxworks/mysql/5.6.47) | ![Docker Size](https://img.shields.io/docker/image-size/gearboxworks/mysql/5.6.47) | _([`5.6.47`, `5.6`](https://github.com/gearboxworks/docker-mysql/blob/master/5.6/DockerfileRuntime))_ |
| [mysql](https://www.mysql.com/) | ![mysql](https://img.shields.io/badge/mysql-5.7.29-green.svg) | ![Docker Version)](https://img.shields.io/docker/v/gearboxworks/mysql/5.7.29) | ![Docker Size](https://img.shields.io/docker/image-size/gearboxworks/mysql/5.7.29) | _([`5.7.29`, `5.7`](https://github.com/gearboxworks/docker-mysql/blob/master/5.7/DockerfileRuntime))_ |
| [mysql](https://www.mysql.com/) | ![mysql](https://img.shields.io/badge/mysql-8.0.19-green.svg) | ![Docker Version)](https://img.shields.io/docker/v/gearboxworks/mysql/8.0.19) | ![Docker Size](https://img.shields.io/docker/image-size/gearboxworks/mysql/8.0.19) | _([`8.0.19`, `8.0`, `latest`](https://github.com/gearboxworks/docker-mysql/blob/master/8.0/DockerfileRuntime))_ |


## Using this container.
This container has been designed to work within the [Gearbox](https://github.com/gearboxworks/)
framework.
However, due to the flexability of Gearbox, it can be used outside of this framework.
You can either use it directly from DockerHub or GitHub.


## Method 1: GitHub repo

### Setup from GitHub repo
Simply clone this repository to your local machine

`git clone https://github.com/gearboxworks/mysql-docker.git`

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


## Method 2: Docker Hub

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

```
SSH_PORT="$(docker port mysql-latest 22/tcp | sed 's/0.0.0.0://')"
ssh -p ${SSH_PORT} -o StrictHostKeyChecking=no gearbox@localhost
```

