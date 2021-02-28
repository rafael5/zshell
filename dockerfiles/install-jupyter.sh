
# https://www.digitalocean.com/community/tutorials/how-to-set-up-jupyter-notebook-with-python-3-on-ubuntu-18-04


apt-get update && apt-get install \
    python3-pip \
    python3-dev \
    sudo


sudo -H pip3 install --upgrade pip
sudo -H pip3 install virtualenv


mkdir /home/python
cd /home/python

virtualenv py_project_env
source my_project_env/bin/activate




