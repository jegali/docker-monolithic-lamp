FROM ubuntu:latest
MAINTAINER jegali


# Update system to latest release
RUN apt update --fix-missing
RUN apt upgrade -y


# Apache install expects user input to set the geographic region
# This is not so good when building the docker image so I disabled it
ARG DEBIAN_FRONTEND=noninteractive
# Install apache webserver
RUN apt install apache2 libapache2-mod-php php php-mysql mariadb-server mariadb-client -y

# Now installing phpmyadmin
RUN apt install phpmyadmin -y

# Setting the php mysqli mod for apache
RUN phpenmod mysqli
RUN service apache2 restart

# link the phpmyadmin directory
RUN ln -s /usr/share/phpmyadmin /var/www/html/phpmyadmin

RUN apt install curl -y
RUN apt install python -y
RUN apt install net-tools -y
RUN apt install iputils-ping 


# stuff for mysql / mariadb
# set the root password
ENV MYSQL_ROOT_PASSWORD root
# Copy the mallowz script to the container# it will be executed in the run-mallowz shell script
COPY mallowz.sql /var/www/html

# This command copies the whole directory recursive - great
COPY ./web /var/www/html
# I don't want the index.html to be the start page, so I remove it
RUN rm /var/www/html/index.html

# I need a startup script for the container
# This will be copied here and started as last command
COPY run-mallowz.sh /usr/sbin/


# Expose port for webserver and port for mysql
expose 80
expose 3306


# Apache cannot be started with this command:
# CMD service apache2 start 
# When you execute this command process apache2 will be detached from the shell. 
# But Docker works only while main process is alive.
# The solution is to run Apache in the foreground.
# CMD apachectl -D FOREGROUND

CMD ["/usr/sbin/run-mallowz.sh"]