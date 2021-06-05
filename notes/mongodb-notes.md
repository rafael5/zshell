
# installation: deep dive
https://treehouse.github.io/installation-guides/mac/mongo-mac.html




# mongodb community edition
https://docs.mongodb.com/manual/tutorial/install-mongodb-on-os-x/#install-with-homebrew


# installation
https://github.com/mongodb/homebrew-brew

> brew tap mongodb/brew
> brew install mongodb-community@4.4

The installation includes the following binaries:
    The mongod server
    The mongos sharded cluster query router
    The mongo shell


# start/stop server
> brew services start mongodb-community@4.4
> brew services stop mongodb-community@4.4


# verify service
> brew services list

# connection information
> ps aux | grep -v grep | grep mongod


# connect to server
> mongo


# MongoDB Database Tools
Starting in MongoDB 4.4.1, installing MongoDB via brew also installs the MongoDB Database Tools.
    mongoimport
    mongodump
    mongotop.


# MongoDB GUIs
https://www.guru99.com/top-20-mongodb-tools.html
https://www.npmjs.com/package/mongo-monkey


# MongoDB Compass
https://www.mongodb.com/try/download/compass


# connect mongo to Compass
https://ademirgabardo.wordpress.com/2016/02/02/installing-and-running-mongodb-on-mac-osx-for-beginners/
https://docs.mongodb.com/manual/reference/connection-string/


# Connection string:
mongodb://mongodb0.example.com:27017


# connect to VSCode
https://docs.mongodb.com/mongodb-vscode/connect/
