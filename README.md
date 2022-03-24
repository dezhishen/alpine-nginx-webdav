# alpine-nginx-webdav
Simple nginx based webdav server for Keepass.

## How to use this image
```shell
docker run --name webdav -p 80:80 -v /path/to/your/keepass/files/:/media/ -d dezhishen/alpine-nginx-webdav
```

No built-in TLS support. Reverse proxy with TLS recommended

## Volumes
- `/media` - served directory

## Authentication
To restrict access to only authorized users (recommended), you can define two environment variables: `$USERNAME` and `$PASSWORD`
```shell
docker run --name webdav -p 80:80 -v /path/to/your/keepass/files/:/media/ -e USERNAME=webdav -e PASSWORD=webdav -d dezhishen/alpine-nginx-webdav

```
