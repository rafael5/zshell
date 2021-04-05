# AXIOM
# https://github.com/dlwicksell/axiom


# AxioM install
figlet "AxioM"
apt install --yes exuberant-ctags

# docker
# apt-get install --yes exuberant-ctags
# cd /home/downloads

# mint
cd ~/Downloads

export GIT_SSL_NO_VERIFY=true
git clone https://github.com/dlwicksell/axiom
cd axiom
./install -q 
