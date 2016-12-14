FROM ubuntu:14.04

RUN apt-get update

RUN apt-get install -y octave

RUN apt-get install -y git nano htop

ADD . /working
WORKDIR /working
WORKDIR /working

