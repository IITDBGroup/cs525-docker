########################################
# Derived from ubuntu distribution
########################################
from ubuntu:latest
MAINTAINER Boris Glavic <bglavic@iit.edu>
########################################
# Create working directories
########################################
WORKDIR /cs525
########################################
# Install packages needed for development
########################################
RUN DEBIAN_FRONTEND="noninteractive" apt-get -y update && apt-get -y install tzdata
RUN apt-get -y update && apt-get install -y \
	autotools-dev \
	autoconf \
	git \
	libtool \
	make \
	man-db \
	valgrind \
	gdb \
	cmake \
    g++ \
    vim \
    emacs \
	&& rm -rf /var/lib/apt/lists/*
########################################
# Per default start bash
########################################
ENTRYPOINT ["/bin/bash"]
