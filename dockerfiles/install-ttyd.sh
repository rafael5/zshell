# ttyd
# https://github.com/tsl0922/ttyd

# usage
# https://github.com/tsl0922/ttyd/wiki/Example-Usage
# ttyd -p 8081 bash


figlet "ttyd"
#apt-get install --yes --no-install-recommends \
#        build-essential \
#        libjson-c-dev \
#        libwebsockets-dev \
#        cmake \
#      && \
#    apt-get clean

cd /home/downloads
export GIT_SSL_NO_VERIFY=true
git clone https://github.com/tsl0922/ttyd.git
cd ttyd
mkdir build
cd build
cmake ..
make
sudo make install

