


## SSH
$ sudo apt-get install openssh-server



## Shared folders with host - Set persmissions
https://forums.virtualbox.org/viewtopic.php?f=6&t=79294
sudo usermod -a -G vboxsf <your_username>

https://askubuntu.com/questions/890729/this-location-could-not-be-displayed-you-do-not-have-the-permissions-necessary
sudo adduser $USER vboxsf

=> then reboot to activate changed permissions




# LSD: install using cargo  (Rust binary manager)
# https://github.com/Peltoche/lsd#installation

# install cargo and cargo tools
sudo apt-get install cargo 
sudo apt-get install cargo-doc gdb-doc rust-doc rust-src lld-9

# install lsd
cargo install lsd

# add `/home/rafael/.cargo/bin` to your PATH in .bashrc to be able to run the installed binaries
export PATH=$HOME/.cargo/bin:$PATH


