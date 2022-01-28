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

```bash
# Setting the php mysqli mod for apache

RUN phpenmod mysqli
RUN service apache2 restart
```

## Adjusting the phpMyAdmin path
I would like to link phpMyAdmin into the website directory to be able to append phpMyAdmin to the webserver URL. So if the address is http://domain.com, phpMyAdmin should be reachable via http://domain.com/phpmyadmin. To ensure this, a link command must be executed:

```bash
# link the phpmyadmin directory

RUN ln -s /usr/share/phpmyadmin /var/www/html/phpmyadmin
```

## Additional components
Now I would like to install curl, python, ifconfig and ping. However, this is mainly because I want to point out during pentesting how dangerous it is not to remove commands from a standard installation to harden the image. Furthermore, I would like to exploit a Python vulnerability to illustrate the approach with metasploit and meterpreter.

```bash
RUN apt install curl -y
RUN apt install python -y
RUN apt install net-tools -y
RUN apt install iputils-ping 
```

## configuring mariaDB
I want to create a user via mysql for phpmyadmin and using the webshop. For this I will set the default password for the root-user to root to be able to access mysql comfortably. Furthermore I want to fill the database for the webshop with life via a SQL script. For this the database must be copied into the image.

```bash
# stuff for mysql / mariadb
# set the root password

ENV MYSQL_ROOT_PASSWORD root

# Copy the mallowz script to the container# it will be executed in the run-mallowz shell script

COPY mallowz.sql /var/www/html
```

## Installing the webshop
In my microservice example (to be found: [here](https://github.com/jegali/docker-nginx-mysql-php-phpmyadmin)), I included the webshop as a volume. For the training purpose, I think it is better to bundle all files in a single container. Therefore, all files for the web store are copied to the default web page directory. The copy command from the Dockerfile handles recursive copying. This can be used to copy an entire directory including all subdirectories, which is very helpful in this case.
