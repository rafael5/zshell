# Docker build notes


1. create dockerfile

2. test Dockderfile in filepath (dot if same directory)
 docker build -f Dockerfile .

3. specify repository and tag to same new image
docker build -t rafael/myubuntu .

4. list images
docker images

5. remove dangling images, containers, networks, and volumes
docker system prune --volumes


# build
docker build -t tagName .


# run
# - d                           detached mode (in background)
# - p hostPort:containerPort    port mapping
docker run [-d -p ...] tagName





ADD

The ADD instruction copies new files, directories or remote file URLs from <src> and adds them to the filesystem of the image at the path <dest>.

The <dest> is an absolute path, or a path relative to WORKDIR, into which the source will be copied inside the destination container.

The example below uses a relative path, and adds “test.txt” to <WORKDIR>/relativeDir/:

    ADD test.txt relativeDir/

Whereas this example uses an absolute path, and adds “test.txt” to /absoluteDir/

    ADD test.txt /absoluteDir/

If your URL files are protected using authentication, you need to use RUN wget, RUN curl or use another tool from within the container as the ADD instruction does not support authentication.

If <src> is a URL and <dest> does not end with a trailing slash, then a file is downloaded from the URL and copied to <dest>.

If <src> is a URL and <dest> does end with a trailing slash, then the filename is inferred from the URL and the file is downloaded to <dest>/<filename>. For instance, ADD http://example.com/foobar / would create the file /foobar. The URL must have a nontrivial path so that an appropriate filename can be discovered in this case (http://example.com will not work).








ENTRYPOINT

An ENTRYPOINT allows you to configure a container that will run as an executable.
For example, the following starts nginx with its default content, listening on port 80:

$ docker run -i -t --rm -p 80:80 nginx

Command line arguments to docker run <image> will be appended after all elements in an exec form ENTRYPOINT, and will override all elements specified using CMD. This allows arguments to be passed to the entry point, i.e., docker run <image> -d will pass the -d argument to the entry point. You can override the ENTRYPOINT instruction using the docker run --entrypoint flag.


The exec form (preferred form):
    ENTRYPOINT ["executable", "param1", "param2"]

The shell form:
    ENTRYPOINT command param1 param2

The shell form prevents any CMD or run command line arguments from being used, but has the disadvantage that your ENTRYPOINT will be started as a subcommand of /bin/sh -c, which does not pass signals. This means that the executable will not be the container’s PID 1 - and will not receive Unix signals - so your executable will not receive a SIGTERM from docker stop <container>.








VOLUME ["/data"]

The VOLUME instruction creates a mount point with the specified name and marks it as holding externally mounted volumes from native host or other containers. The value can be a JSON array, VOLUME ["/var/log/"], or a plain string with multiple arguments, such as VOLUME /var/log or VOLUME /var/log /var/db. For more information/examples and mounting instructions via the Docker client, refer to Share Directories via Volumes documentation.







USER

    USER <user>[:<group>]
or
    USER <UID>[:<GID>]

The USER instruction sets the user name (or UID) and optionally the user group (or GID) to use when running the image and for any RUN, CMD and ENTRYPOINT instructions that follow it in the Dockerfile.








WORKDIR

WORKDIR /path/to/workdir

The WORKDIR instruction sets the working directory for any RUN, CMD, ENTRYPOINT, COPY and ADD instructions that follow it in the Dockerfile. If the WORKDIR doesn’t exist, it will be created even if it’s not used in any subsequent Dockerfile instruction.

The WORKDIR instruction can be used multiple times in a Dockerfile. If a relative path is provided, it will be relative to the path of the previous WORKDIR instruction. For example:

WORKDIR /a
WORKDIR b
WORKDIR c
RUN pwd

The output of the final pwd command in this Dockerfile would be /a/b/c.

The WORKDIR instruction can resolve environment variables previously set using ENV. You can only use environment variables explicitly set in the Dockerfile. For example:

ENV DIRPATH=/path
WORKDIR $DIRPATH/$DIRNAME
RUN pwd

The output of the final pwd command in this Dockerfile would be /path/$DIRNAME







ARG

ARG <name>[=<default value>]

The ARG instruction defines a variable that users can pass at build-time to the builder with the docker build command using the --build-arg <varname>=<value> flag. If a user specifies a build argument that was not defined in the Dockerfile, the build outputs a warning.

An ARG instruction goes out of scope at the end of the build stage where it was defined. To use an arg in multiple stages, each stage must include the ARG instruction.

FROM busybox
ARG SETTINGS
RUN ./run/setup $SETTINGS

FROM busybox
ARG SETTINGS
RUN ./run/other $SETTINGS


Unlike an ARG instruction, ENV values are always persisted in the built image. Consider a docker build without the --build-arg flag:

Predefined ARGs🔗

Docker has a set of predefined ARG variables that you can use without a corresponding ARG instruction in the Dockerfile.

    HTTP_PROXY
    http_proxy
    HTTPS_PROXY
    https_proxy
    FTP_PROXY
    ftp_proxy
    NO_PROXY
    no_proxy







SHELL

SHELL ["executable", "parameters"]

The SHELL instruction allows the default shell used for the shell form of commands to be overridden. The default shell on Linux is ["/bin/sh", "-c"], and on Windows is ["cmd", "/S", "/C"]. The SHELL instruction must be written in JSON form in a Dockerfile.

The SHELL instruction is particularly useful on Windows where there are two commonly used and quite different native shells: cmd and powershell, as well as alternate shells available including sh.

The SHELL instruction can appear multiple times. Each SHELL instruction overrides all previous SHELL instructions, and affects all subsequent instructions. For example:






# -----------------------------------------------------------------------------

RUN echo "-----------------  DEFAULT /bin/bash ------------------->"
RUN echo I am using the default /bin/sh
RUN ["/bin/bash", "-c", "echo I am using bash"]

RUN echo "-----------------  SHELL /bin/bash ------------------->"
SHELL ["/bin/bash", "-c"]
RUN echo I am using bash, which is now the default

RUN cd /home/ \
    && wget --no-check-certificate https://github.com/Peltoche/lsd/releases/download/0.19.0/lsd-musl_0.19.0_amd64.deb
RUN chmod + x chmod +x lsd-musl_0.19.0_amd64.deb
RUN dpkg -i home/lsd-musl_0.19.0_amd64.deb



#RUN echo "-----------------  RUN /bin/bash ------------------->"
#RUN ["/bin/sh", "-c", "echo I am using /bin/sh"]
#RUN ["echo", "I don't use a shell at all"]


# CMD ["executable","param1","param2"]
#CMD ["/bin/sh -c" ]



# BASH COMMANDS:  CMD vs ENTRYPOINT
# https://aws.amazon.com/blogs/opensource/demystifying-entrypoint-cmd-docker/

#ENTRYPOINT [ "]


#WORKDIR /home/data
#RUN cd /home/data/ \
#    && wget --no-check-certificate https://github.com/Peltoche/lsd/releases/download/0.19.0/lsd-musl_0.19.0_amd64.deb \
#    && chmod + x chmod +x lsd-musl_0.19.0_amd64.deb \
#    && dpkg -i home/lsd-musl_0.19.0_amd64.deb

#ENV gtmdir=/home/data \
#   LANG=en_US.UTF-8 \
#   LANGUAGE=en_US:en \
#   LC_ALL=en_US.UTF-8

#Start YottaDB command:
#ENTRYPOINT ["/opt/yottadb/current/ydb"]


# RUN echo "----------------- LSD ------------------->"
# cannot use cd /../... to change directory; must use WORKDIR
#WORKDIR /home/data
#CMD wget --no-check-certificate https://github.com/Peltoche/lsd/releases/download/0.19.0/lsd-musl_0.19.0_amd64.deb
#CMD chmod +x lsd-musl_0.19.0_amd64.deb
#CMD dpkg -i home/lsd-musl_0.19.0_amd64.deb
# WORKDIR /home








# RUN OPTIONS
# https://phoenixnap.com/kb/docker-run-command-with-examples
# -i, --interactive     Keep STDIN open even if not attached
# -t, --tty             Allocate a pseudo-TTY
# -v                    volume share:   host/path:container/path   
# -p                    port map:       hostPort:containerPort    
# -d                    detached (runs in background)
# --network=host
# --entrypoint "/bin/bash" 
# -----------------------------------------------------------------------------





# RUN echo "----------------- BASH ------------------->"
# CMD [ "/bin/bash" ]
# WORKDIR /home/



# SOURCE BASH SCRIPTS/ALIASES
# 1. define shell:
# SHELL ["/bin/bash", "-c"] 
# RUN source aliases-bash.sh
# 2. run using full path of shell:
# RUN /bin/bash -c "source aliases-bash.sh"
# RUN source $HOME/.bashrc; echo $HOME
# ==> NEITHER APPROACH WORKS




# SSH SERVER --------------------------
# default docker does not have sudo or openssh server installed
#RUN apt install  openssh-server sudo -y

# create a user called test and add it to the sudo group 
#RUN useradd -rm -d /home/ubuntu -s /bin/bash -g root -G sudo -u 1000 test 

# set the password for the user test to test
#RUN  echo 'test:test' | chpasswd

# start ssh service
#RUN service ssh start

# make docker container listen on port 22 (the default for ssh)
#EXPOSE 22

# start ssh daemon
#CMD ["/usr/sbin/sshd","-D"]






# -----------------------------------------------------------------------------
# UNMINIMIZE
# -----------------------------------------------------------------------------
# RUN yes | unminimize

# https://www.programmersought.com/article/46215377293/
# https://askubuntu.com/questions/707621/official-docker-image-for-ubuntu-server
# https://github.com/verteen/ubuntu-unminimize/blob/32424f309b2fde8f3ca43960a470bc377dd851b8/Dockerfile
# RUN export DEBIAN_FRONTEND=noninteractive && \
#    bash -c 'yes | unminimize'




#   openssh-server \
#   net-tools \
#   libssl-dev \

#    build-essential\
#    linux-headers-generic\
#    dkms\
#    gcc\
#    make


