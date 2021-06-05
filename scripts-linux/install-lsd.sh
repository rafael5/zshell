


# docker
cd /home/downloads
export GIT_SSL_NO_VERIFY=true
git clone https://github.com/Peltoche/lsd/releases/download/0.19.0/lsd-musl_0.19.0_amd64.deb /home/downloads
chmod +x lsd-musl_0.19.0_amd64.deb
dpkg -i lsd-musl_0.19.0_amd64.deb


# dockerfile
# WORKDIR /home/downloads
# ADD    https://github.com/Peltoche/lsd/releases/download/0.19.0/lsd-musl_0.19.0_amd64.deb /home/downloads
# RUN    chmod +x lsd-musl_0.19.0_amd64.deb && \
#        dpkg -i lsd-musl_0.19.0_amd64.deb