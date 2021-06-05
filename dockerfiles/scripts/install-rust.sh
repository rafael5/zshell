# https://stackoverflow.com/questions/57251508/run-rustups-curl-fetched-installer-script-non-interactively
# https://www.rust-lang.org/learn/get-started

figlet "rust"
cd /home/downloads
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y

# rustup update

