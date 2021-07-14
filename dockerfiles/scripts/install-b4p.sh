

figlet "B4P"
cd /home/downloads
export GIT_SSL_NO_VERIFY=true
git clone https://github.com/georgzurbonsen/Beyond4P_Distribution
cd Beyond4P_Distribution/v8.03a/
tar -xvzf B4P_8_03a_Installation_64_bit_LINUX.tar.gz
cd b4p_installation/
sudo ./setup --choice=machine --locale=en_US




# dockerfile:
# RUN echo "------------------------------------- B4P  --------------------------------------------"
# WORKDIR /home/downloads
# ADD https://github.com/georgzurbonsen/Beyond4P_Distribution/blob/master/LATEST/B4P_64bit_installer_LINUX.tar.gz  /home/tmp
# ADD B4P_64bit_installer_LINUX.tar.gz  /home/downloads
# RUN chmod +x B4P_64bit_installer_LINUX.tar.gz   \
#     && tar -xvzf B4P_64bit_installer_LINUX.tar.gz 
