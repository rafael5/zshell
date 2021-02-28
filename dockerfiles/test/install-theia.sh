# theia


# docker
# FROM theiaide/theia
# LABEL Description="Theia server"
#  docker build  -t theia/rmr -f df_u2004 .
#  docker run -it -p 3000:3000 -v ~/docker/image_home:/home/data theia/rmr



# method #1
#https://github.com/theia-ide/theia-apps/tree/master/theia-deb-build-docker
#figlet "theia"
#cd /home/downloads
#export GIT_SSL_NO_VERIFY=true
#git clone https://github.com/theia-ide/theia-apps.git
#cd theia-apps/theia-deb-build-docker
#docker build -t theia-deb .


# method #2
# https://theia.readthedocs.io/en/latest/install.html

# install via pip
apt-get install python3
pip install theia


# install from source
python -m venv dev
source dev/bin/activate


# git install
cd /home/downloads
git clone https://github.com/theia-log/theia
cd theia
python -m venv ENV/dev
source ENV/dev/bin/activate
pip install -r requirements.txt

# pip install
cd ~/projects/workspace
python -m venv ENV/dev
source ENV/dev/bin/activate
pip install -e "git+https://github.com/theia-log/theia#egg=theia"
