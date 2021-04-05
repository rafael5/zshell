# YottaDB
# https://yottadb.com/product/get-started/

figlet "YottaDB"
cd /home/downloads
wget https://gitlab.com/YottaDB/DB/YDB/raw/master/sr_unix/ydbinstall.sh
chmod +x ydbinstall.sh
sudo ./ydbinstall.sh --utf8 default --verbose --overwrite-existing
YDB_PATH=/usr/local/lib/yottadb/r130

figlet "ydb configure"
cd /usr/local/lib/yottadb/r130
source $(pkg-config --variable=prefix yottadb)/ydb_env_set

