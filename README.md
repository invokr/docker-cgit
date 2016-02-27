Docker Teamspeak
=================

![](https://badge.imagelayers.io/invokr/cgit:latest.svg)
![](https://img.shields.io/docker/pulls/invokr/cgit.svg)
[![Build Status](https://travis-ci.org/invokr/docker-cgit.svg?branch=master)](https://travis-ci.org/invokr/docker-cgit)

[CGIT](http://git.zx2c4.com/cgit/) Docker container. Scans and displays every repository under `/git`.

Running the container
----------------------

    docker pull invokr/cgit
    docker run -name cgit -d -p 80:80 -v my/git/repositories:/git invokr/cgit

Optional authentication via htaccess:

    docker run -name cgit -d -p 80:80 -e HTTP_AUTH_USER=user -e HTTP_AUTH_PASSWORD=password -v my/git/repositories:/git invokr/cgit
