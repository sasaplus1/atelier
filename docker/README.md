# Docker

my development environment within Docker container

## How to use

```console
$ docker build -t sasaplus1/atelier .
$ docker run --rm --init -it -v "$PWD:/mnt:delegated" sasaplus1/atelier bash
```
