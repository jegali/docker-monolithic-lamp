# docker-monolithic-lamp
In this repository I show the procedure of creating a LAMP (Linux - Apache - mySQL - PHP) environment 
for my hackable webshop mallowz. <br/>

The environment is built as a monolith so that it can be conveniently downloaded as an image and started 
without having to worry about the interaction of the different components and services. <br/>

It was also a good exercise for me to install and configure a complete environment on the basis of an ubuntu 
image instead of just using ready-made images from the Docker Hub.

## Approach
We will go through the steps one by one in this repository and readme, introduce the required parts of the source code, and have the complete Dockerfile and other required scripts available at the end.

## Creating the base image
We will use the available "naked" ubuntu image in the latest version for the creation of the docker image. As maintainer we enter our name, in my case "jegali". We create the file "Dockerfile" and enter as the first line:

```bash
FROM ubuntu:latest
MAINTAINER jegali
```

## Update the image to the latest version 
The image used should be updated to the latest version. To do this, all patches that have been made available since the image was created or released will be applied. To do this, add these lines to the Dockerfile:

```bash
# Update system to latest release
RUN apt update --fix-missing
RUN apt upgrade -y
```
