# Docker notes

# Dockerfile: how-to
* https://takacsmark.com/dockerfile-tutorial-by-example-dockerfile-best-practices-2018/
* https://thenewstack.io/docker-basics-how-to-use-dockerfiles/
* https://dzone.com/articles/docker-as-package-manager-for-linux


# Dockerfile: docs
https://docs.docker.com/engine/reference/builder/
https://docs.docker.com/samples/



# Docker: commands
https://towardsdatascience.com/15-docker-commands-you-should-know-970ea5203421

Recall that a Docker image is made of a Dockerfile + any necessary dependencies. Also recall that a Docker container is a Docker image brought to life. To work with Docker commands, you first need to know whether you’re dealing with an image or a container.

A Docker image either exists or it doesn’t.
A Docker container either exists or it doesn’t.
A Docker container that exists is either running or it isn’t.

## docker container
    create — Create a container from an image.
    start — Start an existing container.
    run — Create a new container and start it.
    ls — List running containers.
    inspect — See lots of info about a container.
    logs — Print logs.
    stop — Gracefully stop running container.
    kill —Stop main process in container abruptly.
    rm— Delete a stopped container.

## docker image
    build — Build an image.
    push — Push an image to a remote registry.
    ls — List images.
    history — See intermediate image info.
    inspect — See lots of info about an image, including the layers.
    rm — Delete an image.

## docker [misc]
    version — List info about your Docker Client and Server versions.
    login — Log in to a Docker registry.
    system prune — Delete all unused containers, unused networks, and dangling images.