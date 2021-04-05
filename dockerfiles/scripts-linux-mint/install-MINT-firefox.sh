#!/bin/bash

# Firefox
# https://github.com/tanrax/linux-install-firefox
# curl -s -L linux-install-firefox https://raw.githubusercontent.com/tanrax/linux-install-firefox/main/linux-install-firefox | bash



# mint
cd ~/Downloads

# START
# set -e

## UNINSTALL
# Remove binaries
# sudo rm -rf /opt/firefox/ /usr/bin/firefox

# DOWNLOAD
curl -L -o firefox.tar.bz2 https://download.mozilla.org/\?product\=firefox-standard-latest-ssl\&os\=linux64\&lang\=en-US

# EXTRACT
tar xjf firefox.tar.bz2
rm -rf firefox.tar.bz2

# INSTALL
sudo mv firefox /opt
sudo ln -s /opt/firefox/firefox /usr/bin/firefox

# DESKTOP INTEGRATION
# Gnome Shell
echo -e "[Desktop Entry]\nEncoding=UTF-8\nName=Firefox\nComment=Firefox\nExec=/opt/firefox/firefox %u\nTerminal=false\nIcon=/opt/firefox/browser/chrome/icons/default/default128.png\nStartupWMClass=Firefox\nType=Application\nCategories=Network;WebBrowser;\nMimeType=text/html;text/xml;application/xhtml+xml;application/xml;application/vnd.mozilla.xul+xml;application/rss+xml;application/rdf+xml;x-scheme-handler/http;x-scheme-handler/https;\nStartupNotify=true\n" | sudo tee -a /usr/share/applications/firefox.desktop

# NOTIFY
echo "Installed!"

