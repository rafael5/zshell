## SQL Server notes




### Install SQL Server in Docker
https://docs.microsoft.com/en-us/sql/linux/quickstart-install-connect-docker?view=sql-server-ver15&pivots=cs1-bash

https://docs.microsoft.com/en-us/sql/linux/quickstart-install-connect-docker?view=sql-server-ver15&pivots=cs1-bash


Docker install
```text
sudo docker pull mcr.microsoft.com/mssql/server:2019-latest
```

Docker run
Password: sqlserver#1Zauber
```
sudo docker run -e "ACCEPT_EULA=Y" -e "SA_PASSWORD=<sqlserver#1Magic>" \
   -p 1433:1433 --name sql1 -h sql1 \
   -d mcr.microsoft.com/mssql/server:2019-latest
```

Make sure server is up
```
sudo docker ps -a
```


Connect to Server then execute all commands via sqlcmd
```text
sudo docker exec -it sql1 "bash"

/opt/mssql-tools/bin/sqlcmd -S localhost -U SA -P "<sqlserver#1Magic>"
```





### Install sqlcmd on Mac OS X

http://antonperez.com/2018/09/10/install-sqlcmd-on-mac-os-x/

```
brew tap microsoft/mssql-release https://github.com/Microsoft/homebrew-mssql-release
ACCEPT_EULA=y brew install msodbcsql mssql-tools
```


```
==> Caveats
==> msodbcsql
If you installed this formula with the registration option (default), you'll
need to manually remove [ODBC Driver 13 for SQL Server] section from
odbcinst.ini after the formula is uninstalled. This can be done by executing
the following command:
    odbcinst -u -d -n "ODBC Driver 13 for SQL Server"
==> msodbcsql17
If you installed this formula with the registration option (default), you'll
need to manually remove [ODBC Driver 17 for SQL Server] section from
odbcinst.ini after the formula is uninstalled. This can be done by executing
the following command:
    odbcinst -u -d -n "ODBC Driver 17 for SQL Server"
```


Connect to Server from host using MacOS command

```
sqlcmd -S 1433,1433 -U SA -P "<sqlserver#1Magic>"
```