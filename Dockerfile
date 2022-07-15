 #	------------------------------
 # Instruction for Dockerfile to create a new image on top of the base image (openjdk)
 # Using the base image openjdk: latest
 FROM openjdk:latest
 # Copying myfile1.txt to the containers /usr/share directory
 RUN cd /usr/share/alpha
 RUN mkdir alpha
 COPY ./fld_c/*.c /usr/share/alpha
 #  
