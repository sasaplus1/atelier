# atelier

my development environment within container

## How to use

```console
$ docker build -t sasaplus1/atelier .
$ docker run --rm --init -it -v "$PWD:/mnt:delegated" sasaplus1/atelier bash
```

## License

The MIT license.
