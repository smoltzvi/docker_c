 #	------------------------------
 # Instruction for Dockerfile to create a new image on top of the base image (openjdk)
 # Using the base image openjdk: latest
 FROM openjdk:latest
 # Install the latest versions of the packages currently installed
 RUN apt update
 # Installing a GCC compiler onto a Docker image
 RUN apt-get -y install gcc
 # Change directory to /usr/share directory
 RUN cd /usr/share
 RUN mkdir /usr/share/alpha
 COPY ./fld_c/*.c /usr/share/alpha
 #Set working directory where application will compile
 WORKDIR /usr/share/alpha
 # Compile .c application
 RUN gcc -o myapp hello.c
 #
