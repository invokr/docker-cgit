Docker Teamspeak
=================

![](https://badge.imagelayers.io/invokr/cgit:latest.svg)
![](https://img.shields.io/docker/pulls/invokr/cgit.svg)

[CGIT](http://git.zx2c4.com/cgit/) Docker container. Scans and displays every repository under `/git`.

Running the container
----------------------

    docker pull invokr/cgit
    docker run -name cgit -d -p 80:80/ -v my/git/repositories:/git invokr/cgit
