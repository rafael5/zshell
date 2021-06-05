# Java OpenJDK 11
# https://openjdk.java.net/faq/

# others:
# https://www.digitalocean.com/community/tutorials/how-to-install-java-with-apt-on-ubuntu-20-04
# https://gist.github.com/geeves/0b383a71f72de5eac90506cc447908b1
# https://www.linuxuprising.com/2019/02/install-any-oracle-java-jdk-version-in.html


apt update
apt upgrade
apt install default-jdk

# Verify JDK is installed by checking Java compiler version (javac)
echo "---------JAVA Compiler (javac) ------"
javac -version

# configure JAVA_HOME environment path
echo "---------JAVA Home environment ------"
update-alternatives --config java

# add JAVA_HOME to path
# sudo nano /etc/environment
# JAVA_HOME="/usr/lib/jvm/java-11-openjdk-amd64/bin/java"



# ENV JAVA_VER 11
# ENV JAVA_HOME usr/lib/jvm/java-11-openjdk-amd64/bin/java


# Verify JDK is installed by checking Java compiler version (javac)
# echo "---------JAVA Compiler (javac) ------"
# javac -version

# configure JAVA_HOME environment path
# echo "---------JAVA Home environment ------"
# update-alternatives --config java

# add JAVA_HOME to path
# sudo nano /etc/environment
# JAVA_HOME="/usr/lib/jvm/java-11-openjdk-amd64/bin/java"


