# mumps - kevin okane
# http://www.cs.uni.edu/~okane/index.html
# m book
# http://www.cs.uni.edu/~okane/source/ISR/isr-native-1.21.src.tar.gz


figlet "mumps"

# requires:
# apt-get install --yes --no-install-recommends \
#    build-essential \
#    libreadline-dev \
#    libpcre3-dev \
#    glib-2.0

s
echo "-----------  DOWNLOAD -----------------------------------"
cd /home/downloads
wget http://www.cs.uni.edu/~okane/source/MUMPS-MDH/mumps-20.06.src.tar.gz
chmod +x mumps-20.06.src.tar.gz
tar -xvzf mumps-20.06.src.tar.gz
cd mumpsc/


echo "-----------  INSTALLATION ------------------------------"
./CompileNativeSharedMumps.script




