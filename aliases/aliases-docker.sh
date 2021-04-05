
# -----------------------------------------------------------------------------
# docker
# -----------------------------------------------------------------------------
# https://www.digitalocean.com/community/tutorials/how-to-remove-docker-images-containers-and-volumes
alias docker-info='echo " docker-  start  | stop  | list | rm | prune | apps "'
alias docker-start='echo "starting Docker Desktop App......"; open -a /Applications/Docker.app/Contents/MacOS/Docker'
alias docker-list='docker ps -a'
alias docker-stop-all='docker stop $(docker ps -a -q)'
alias docker-rm-all='docker rmi $(docker images -a -q -f)'
alias docker-prune='docker system prune'
alias docker-apps='echo "DOCKER APPS:    dst- conda- spark- nv- ydb- iris-  pg-  theia-" '

alias docker-env="env | grep DOCKER_"
alias docker-machine-list="docker-machine ls"

function docker-machine-env() {
  eval "$(docker-machine env "${1:-default}")"
}
function docker-clean() {
  docker rmi -f $(docker images -q -a -f dangling=true)
}




# -----------------------------------------------------------------------------
# sage math
# -----------------------------------------------------------------------------
alias sage-docker-run='docker run -it sagemath/sagemath:latest'
alias sage-docker-jupyter-run='docker run -p8888:8888 sagemath/sagemath:latest sage-jupyter'
alias sage-docker-jupyter-open='open http://127.0.0.1:8888/?token=18b31be6b3647ed845c31354d5652a87106eb7318b3b0e78'



# -----------------------------------------------------------------------------
# datascience toolbox (dst)
# -----------------------------------------------------------------------------
# http://datascienceatthecommandline.com/
# export COMMANDLINE_SCIENCE='/Volumes/SSD/rafael/git/data-science-at-the-command-line/tools'
# export PATH="/Volumes/SSD/rafael/git/data-science-at-the-command-line/tools:$PATH"
alias dst-info='echo "dst- docs | pull | run   [DataScienceToolbox]"'
alias dst-docs='open https://www.datascienceatthecommandline.com/2e/index.html'
alias dst-pull='docker pull datasciencetoolbox/dsatcl2e'
alias dst-run='open ~/docker/dst; docker run --rm -it -v ~/docker/dst:/home/dst datasciencetoolbox/dsatcl2e'


# -----------------------------------------------------------------------------
# spark-notebook
# -----------------------------------------------------------------------------
# https://spark.apache.org/docs/latest/index.html
# https://jupyter-docker-stacks.readthedocs.io/en/latest/using/selecting.html
alias spark-info='echo "spark- pull | run | open | stop | rm" '
alias spark-pull='docker pull jupyter/all-spark-notebook:latest'
alias spark-run='docker run -d -P --name notebook jupyter/all-spark-notebook'
# get the random host port assigned to the container port 8888
alias spark-open='docker port notebook 8888; docker logs --tail 3 notebook; echo "=> open http://localhost:port#" '
alias spark-stop='docker stop notebook'
alias spark-rm='docker rm notebook'



# -----------------------------------------------------------------------------
# nodevista
# -----------------------------------------------------------------------------
# https://github.com/vistadataproject/nodeVISTA/tree/master/setupDocker#docker-for-nodevista
alias nv-info='echo "nv- pull | run | restart | schema | query" '
alias nv-pull='docker pull vistadataproject/nodevista999:latest'
alias nv-run='docker run -p 9330:9430 -p 32:22 -p 9100:9000 -p 9331:8001 -d -P --name nodevista999 vistadataproject/nodevista999:latest'
alias nv-restart='docker restart nodevista999'
alias nv-schema='open http://localhost:9100/schema'
alias nv-query='open http://localhost:9100/query'


# -----------------------------------------------------------------------------
# yottadb
# -----------------------------------------------------------------------------
alias ydb-info='echo "ydb-  pull | run " '
alias ydb-pull='docker pull yottadb/yottadb-debian:latest-master'
alias ydb-run='open ~/docker/ydb-data; docker run -it -v ~/docker/ydb-data:/data --network=host yottadb/yottadb-debian:latest-master'

alias ydb-pull-vehu='docker pull yottadb/octo-vehu'
alias ydb-run-vehu='docker run -p 8081:8081 -p 2224:22 -p 61012:61012 -d -P --sysctl kernel.msgmax=1048700 --sysctl kernel.msgmnb=65536000 --name=octo-vehu yottadb/octo-vehu'


# iris
alias iris-info='echo "iris- pull | run  | open" '
alias iris-pull='docker pull store/intersystems/iris-ml-community:2020.4.0AA.368.0'
alias iris-run='docker run --name iris-ml -d --publish 9091:51773 --publish 9092:52773 store/intersystems/iris-ml-community:2020.4.0AA.368.0'
alias iris-open='echo "IRIS Login:  _SYSTEM / SYS "; open http://localhost:9092/csp/sys/UtilHome.csp'



# -----------------------------------------------------------------------------
# theia
# -----------------------------------------------------------------------------
# https://hub.docker.com/r/theiaide/theia/
alias theia-info='echo "theia- pull | run | open" '
alias theia-pull='docker pull theiaide/theia'
alias theia-run='docker run -it -p 3000:3000 -v "$(pwd):/home/project:cached" theiaide/theia'
alias theia-open='open http://localhost:3000'


# -----------------------------------------------------------------------------
# postgres
# -----------------------------------------------------------------------------
alias pg-info='echo "pg- pull | run  | open" '
alias pg-pull='docker pull dpage/pgadmin4'
alias pg-run='docker run -p 8080:80  -e PGADMIN_DEFAULT_EMAIL=user@domain.com -e PGADMIN_DEFAULT_PASSWORD=SuperSecret -d dpage/pgadmin4'
alias pg-open='open http://localhost:8080; echo "Postgres Login: user@domain.com / SuperSecret"'



# -----------------------------------------------------------------------------
# qewd
# -----------------------------------------------------------------------------
# git clone https://github.com/robtweed/qewd-jsdb
alias qewd-info='echo "qewd- start | open | stop" '
alias qewd-start='cd ~/docker/qewd-jsdb/; ./start; qewd-open'
alias qewd-stop='cd ~/docker/qewd-jsdb/; ./stop'
alias qewd-open='echo "------- qewd-monitor - viewer - document - kvs - lists - rdb - dom --------"; open http://localhost:8080/qewd-monitor'


# -----------------------------------------------------------------------------
# python
# -----------------------------------------------------------------------------
# https://hub.docker.com/_/python?tab=tags&page=1&ordering=last_updated
# https://docs.docker.com/docker-hub/official_images/
alias py-pull='docker pull python'



# -----------------------------------------------------------------------------
# mssql
# -----------------------------------------------------------------------------
# https://docs.microsoft.com/en-us/sql/linux/quickstart-install-connect-docker?view=sql-server-ver15&pivots=cs1-bash
alias mssql-info='echo "mssql- pull | run | connect | docs" '
alias mssql-pull='sudo docker pull mcr.microsoft.com/mssql/server:2019-latest'
alias mssql-run='sudo docker run -e "ACCEPT_EULA=Y" -e "SA_PASSWORD=<mssql@Passw0rd>"  -p 1433:1433 --name sql1 -h sql1   -d mcr.microsoft.com/mssql/server:2019-latest'
alias mssql-connect='sudo docker exec -it sql1 "bash"'
alias mssql-docs='open https://docs.microsoft.com/en-us/sql/linux/quickstart-install-connect-docker?view=sql-server-ver15&pivots=cs1-bash'

# after connected to guest OS
# verify password:
#    echo $SA_PASSWORD
# enter sqlcmd
#     /opt/mssql-tools/bin/sqlcmd -S localhost -U SA -P "<mssql@Passw0rd>"


# mssql-cli
# https://github.com/dbcli/mssql-cli/blob/master/doc/usage_guide.md
# https://docs.microsoft.com/en-us/sql/connect/odbc/linux-mac/install-microsoft-odbc-driver-sql-server-macos?view=sql-server-ver15
# brew tap microsoft/mssql-release https://github.com/Microsoft/homebrew-mssql-release
# brew update
# HOMEBREW_NO_ENV_FILTERING=1 ACCEPT_EULA=Y brew install msodbcsql17 mssql-tools


# mssql-visual studio code
# https://github.com/microsoft/vscode-mssql/blob/main/CHANGELOG.md
# https://docs.microsoft.com/en-us/sql/tools/visual-studio-code/sql-server-develop-use-vscode?view=sql-server-ver15





# -----------------------------------------------------------------------------
# anaconda
# -----------------------------------------------------------------------------
# https://hub.docker.com/r/continuumio/anaconda3
# alias conda-dc-info='echo "conda- pull | run | nb" '
# alias conda-dc-pull='docker pull continuumio/anaconda3'
# alias conda-dc-run='docker run -i -t continuumio/anaconda3 /bin/bash'
# alias conda-dc-nb='docker run -i -t -p 8888:8888 continuumio/anaconda3 /bin/bash -c "/opt/conda/bin/conda install jupyter -y --quiet && mkdir /opt/notebooks && /opt/conda/bin/jupyter notebook --notebook-dir=/opt/notebooks --ip='*' --port=8888 --no-browser"; open https://localhost.8888'



# -----------------------------------------------------------------------------
# owncloud
# -----------------------------------------------------------------------------
# https://doc.owncloud.org/server/10.6/admin_manual/installation/docker/
# alias owncloud-pull='docker pull owncloud/server'
# alias owncloud-run='docker run -d -p 80:80 owncloud:8.1; open http://localhost'
