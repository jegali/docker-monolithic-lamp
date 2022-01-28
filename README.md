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
The image used should be updated to the latest version. To do this, all patches that have been made available since the image was created or released will be applied. At the console we would now type "apt update" or "sudo apt update". If this command is to be executed by Docker during the creation of the image, the command line can be used as usual, it just needs to be preceded by the command RUN. Add these lines to the Dockerfile:

```bash
# Update system to latest release

RUN apt update --fix-missing
RUN apt upgrade -y
```

## Install apache, php and mariadb
Now we add the necessary components to the image one by one. we start with the absolutely necessary basic components: apache as web server, php as scripting engine and maria db as database management system.<br/>

Apache expects user input during installation. This will interrupt the automatic installation of the Docker image. To bypass this user interaction, the environment variable DEBIAN_FRONTEND is set. To prevent further possible input of the form Y/N/Cancel, the -y parameter is added to the command line.

```bash
# Apache install expects user input to set the geographic region
# This is not so good when building the docker image so I disabled it

ARG DEBIAN_FRONTEND=noninteractive

# Install apache webserver, php and mariadb as well as needed libs/components

RUN apt install apache2 libapache2-mod-php php php-mysql mariadb-server mariadb-client -y
```

## Install phpMyAdmin
It is very convenient to be able to administer the database through a graphical user interface. Therefore, we additionally install phpMyAdmin. Since the image will also be used for training purposes and it is useful to be able to test SQL statements before it is to be used for injection, the installation of phpMyAdmin makes sense. The installation is done with one command:

```bash
# Now installing phpmyadmin

RUN apt install phpmyadmin -y
```

## Configuring the environment
Under Apache, php requires a module called mysqli. This can be started via phpenmod (php enable module). To be able to use the module, the web server must be restarted once.<br/>
