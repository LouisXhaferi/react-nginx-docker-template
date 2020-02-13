# react-nginx-docker template

This repository offers a baseline create-react-app react application hosted on a nginx-webserver, based on linux alpine.

## Commands

### Build image in Docker

First off, you should build the docker image with the following command.
You can choose the name of the image yourself. To do that replace "react:prod" with your desired name.

```
    $ docker build . -t react:prod
```

### Run your image

After a successfull build process, you can run the image with the following command.

```
    docker run --rm -d -p 80:80/tcp react:prod
```
