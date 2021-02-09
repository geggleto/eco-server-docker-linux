# eco-server-docker-linux
This is a script to automate the starting/running of an eco-gameserver on Linux

## Prerequisites
- You first need to place the link to the Linux-Server.zip in the `server-zip-url.txt` file.
  - You can retrieve the link from the [Eco Account Page](https://play.eco/account)
  - It should look something like `https://.../eco-releases/EcoServerLinux....zip`
  
## Run
- If you want to store the Eco-Server files persistently, simply edit the volumes in the `docker-compose.yml`
- Start the container with the following

```
$ docker-compose up -d
```

- Alternatively you can build the Docker-image and run it by passing the needed arguments (port 3000 tcp & udp and 3001 for the web interface) e.g.:
```
$ docker build -t [image-name] .
$ docker run -p 3000:3000/udp -p 3000:3000/tcp -p 3001:3001 -d [image-name]
```

**Done.**
