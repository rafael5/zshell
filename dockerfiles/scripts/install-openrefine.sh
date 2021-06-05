
figlet "OpenRefine"
cd /home/downloads
export GIT_SSL_NO_VERIFY=true
wget https://github.com/OpenRefine/OpenRefine/releases/download/3.4.1/openrefine-linux-3.4.1.tar.gz
mkdir /home/openrefine
tar -xvzf openrefine-linux-3.4.1.tar.gz -C /home/openrefine --strip-components 1


# RDF Extension
# https://github.com/stkenny/grefine-rdf-extension
# https://github.com/stkenny/grefine-rdf-extension/releases/
# https://github.com/stkenny/grefine-rdf-extension/wiki
mkdir /home/openrefine/webapp/extensions/rdf-extension
cd  /home/openrefine/webapp/extensions/rdf-extension
wget https://github.com/stkenny/grefine-rdf-extension/releases/download/v1.3.0/rdf-extension-1.3.0.zip
unzip rdf-extension-1.3.0.zip
rm rdf-extension-1.3.0.zip



# To start: 
# cd /home/openrefine/
#./refine 
# open  http://127.0.0.1:3333





