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
