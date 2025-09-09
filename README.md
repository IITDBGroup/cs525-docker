# Dockerfile for CS581

We have created an ubuntu based docker image for building and testing assignments for the CS581 course at UIC: [https://www.cs.uic.edu/~bglavic/cs581/](https://www.cs.uic.edu/~bglavic/cs581/)

## Install the image and use the container


You can get the image from docker hub by running

~~~sh
docker pull iitdbgroup/cs581:latest
~~~

Create a container and share a folder with your host machine

Change into the directory on you machine which has the cs581 source code. Then run

~~~sh
docker run -ti --name cs581 -v $(pwd):/cs581 iitdbgroup/cs581
~~~

This creates a container from the image named cs581 and runs the images command (`/bin/bash`) in an interactive shell (`-ti`). Furthermore it exposes the current working directory (`$(pwd)`) as directory `/cs581` in the container.

You can then use this container for building your program and debugging it using gdb/valgrind. We have included standard build tools in the container, but only basic editors vim and emacs (you can edit the code on your host will working with the container if you share the directory as shown above. To stop the container run

~~~
exit
~~~

To restart run

~~~sh
docker start -i cs581
~~~

## Some further information on docker

* [http://dockerhub.com/](http://dockerhub.com/)
* [https://www.docker.com/](https://www.docker.com/)
* tutorial: [https://docs.docker.com/engine/getstarted/](https://docs.docker.com/engine/getstarted/)

## Package Requests

Please use the course's google group to request additional packages to be installed.
