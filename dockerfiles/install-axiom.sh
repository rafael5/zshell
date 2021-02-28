# AXIOM
# https://github.com/dlwicksell/axiom


# AxioM install
figlet "AxioM"
apt-get install --yes exuberant-ctags
cd /home/downloads
export GIT_SSL_NO_VERIFY=true
git clone https://github.com/dlwicksell/axiom
cd axiom
./install -q 
