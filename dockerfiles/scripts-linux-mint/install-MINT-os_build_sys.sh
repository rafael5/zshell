

sudo apt-get update && sudo apt-get install --yes --no-install-recommends \
       build-essential \
        cmake \
        make \
        libtinfo5 \   
        libtool \
        libjson-c-dev \
        libwebsockets-dev \ 
        libreadline-dev \
        libpcre3-dev \
        glib-2.0  \   
        linux-headers-generic\                         
#       automake \
#       autoconf \                                     
#       gcc \                                          
#       dkms \                                         
        && \
sudo apt-get clean
