figlet "B4P"
cd /home/downloads
export GIT_SSL_NO_VERIFY=true
git clone https://github.com/georgzurbonsen/Beyond4P_Distribution
cd Beyond4P_Distribution
chmod +x B4P_8_01_Installation_64_bit_LINUX.tar.gz 
tar -xvzf B4P_8_01_Installation_64_bit_LINUX.tar.gz
cd b4p_installation/
./setup 


# dockerfile:
# RUN echo "------------------------------------- B4P  --------------------------------------------"
# WORKDIR /home/downloads
# ADD https://github.com/georgzurbonsen/Beyond4P_Distribution/blob/master/B4P_8_01_Installation_64_bit_LINUX.tar.gz /home/tmp
# ADD B4P_8_01_Installation_64_bit_LINUX.tar.gz /home/downloads
# RUN chmod +x B4P_8_01_Installation_64_bit_LINUX.tar.gz  \
#     && tar -xvzf B4P_8_01_Installation_64_bit_LINUX.tar.gz
