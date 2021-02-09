# eco-server-docker-linux
This is a script to automate the starting/running of an eco-gameserver on Linux

## Prerequisites
- You will need to have `docker` and `docker-compose` installed on your machine 
- First need to place the link to the Linux-Server.zip in the `server-zip-url.txt` file.
  - You can retrieve the link from the [Eco Account Page](https://play.eco/account)
  - It should look something like `https://.../eco-releases/EcoServerLinux....zip`
- If you want to customize your configuration for the server create a volume / folder with the config files and point the container to the specific location in the `docker-compose.yml`
- You will need to forward your ports on your router aswell as open port 3000 tcp/udp and 3001/tcp in your firewall
  
## Run
- If you want to change the location of the Eco-Server files, simply edit the volumes in the `docker-compose.yml`
- Start the container with the following

```
$ docker-compose up -d
```

## Run alternative
- Alternatively you can build the Docker-image and run it by passing the needed arguments (port 3000 tcp & udp and 3001 for the web interface) e.g.:
```
$ docker build -t [image-name] .
$ docker run -p 3000:3000/udp -p 3000:3000/tcp -p 3001:3001 -d [image-name]
```

**Done.**
