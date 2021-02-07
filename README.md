# eco-docker
This is a script to automate the starting and running of an eco-gameserver

## Installation
- You first need to place the link to the Linux-Server.zip in the `server-url.txt` file.
  - You can retrieve the link from the [Eco Account Page](https://play.eco/account) 
- Then you can build the container with the following:

```
$ docker build -t [your-name-of-choice] .
```
**Done.**

## Run
###### Possibility 1
If you want to specify a folder for persistent storage of the Game-World and load your own configuration files you can use the start-script. Docker will mount the folders given in the script into the Container. By default the ports 3000 and 3001 will be used for the Eco-Server.

**Notice: you will need to have the configuration files already in the folder you are mounting.**

Furthermore the docker container will always restart on crashes and reboot of the host machine unless explicitly killed

```
$ /path/to/start-container.sh [your-name-of-choice] /path/to/ConfigsFolder /path/to/StorageFolder
```

###### Possibility 2
To just run the Server without persistent storage you can use the following, but you will need to expose the ports 3000-3001 of the game server to reach it.
```
$ docker run -p 3000:3000 -p 3001:3001 -d [your-name-of-choice]
```

## Have Fun
