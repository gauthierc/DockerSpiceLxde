## DockerSpiceLxde

This repository contains **Dockerfile** of [Ubuntu Desktop (LXDE)](http://lxde.org/) for [Docker](https://www.docker.com/)'s


### Base Docker Image

* [ubuntu:20.04](https://registry.hub.docker.com/_/ubuntu/)


### Installation

1. Install [Docker](https://www.docker.com/).

2. Download [automated build](https://registry.hub.docker.com/u/gauthierc/dockerspicelxde/) from public [Docker Hub Registry](https://registry.hub.docker.com/): `docker pull gauthierc/dockerspicelxde`

   (alternatively, you can build an image from Dockerfile: `docker build -t="gauthierc/dockerspicelxde" github.com/gauthierc/DockerSpiceLxde`)


### Usage


	docker run -p 5900:5900 gauthierc/dockerspicelxde

If you local user is 'myusername' and your uid is '1000' and you want map your /home/myusername in Docker:

	docker run -p 5900:5900 -e SPICE_USER=myusername -e SPICE_UID=1000 -v /home/myusername:/home/myusername gauthierc/dockerspicelxde

Connect via Spice client 'spicec -h localhost -p 5900'

