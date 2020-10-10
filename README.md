# Dockerfile for CS525

We have created an ubuntu based docker image for building and testing assignments for the CS525 course IIT: [http://cs.iit.edu/~cs525](http://cs.iit.edu/~cs525)

## Install the image and use the container


You can get the image from docker hub by running

~~~sh
docker pull iitdbgroup/cs525:latest
~~~

Create a container and share a folder with your host machine

Change into the directory on you machine which has the cs525 source code. Then run

~~~sh
docker run -ti --name cs525 -v $(pwd):/cs525 iitdbgroup/cs525
~~~

This creates a container from the image named cs525 and runs the images command (`/bin/bash`) in an interactive shell (`-ti`). Furthermore it exposes the current working directory (`$(pwd)`) as directory `/cs525` in the container.

You can then use this container for building your program and debugging it using gdb/valgrind. We have included standard build tools in the container, but no editors (you can edit the code on your host will working with the container if you share the directory as shown above. To stop the container run

~~~
exit
~~~

To restart run

~~~sh
docker start -i cs525
~~~

## Ubunutu 18.04 image

The `latest` image uses the latest ubuntu version available through the docker image `ubuntu:latest`. Alternatively, you can use an Ubuntu 18.04 image:

~~~sh
docker pull iitdbgroup/cs525:18.04
~~~

## Some further information on docker

* [http://dockerhub.com/](http://dockerhub.com/)
* [https://www.docker.com/](https://www.docker.com/)
* tutorial: [https://docs.docker.com/engine/getstarted/](https://docs.docker.com/engine/getstarted/)

## Package Requests

Please use the course's google group to request additional packages to be installed.
