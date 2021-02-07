#!/bin/bash

echo "starting container..."
echo $(docker run -d -v $2:/eco/Configs -v $3:/eco/Storage -p 3000:3000/udp -p 3000:3000/tcp -p 3001:3001 --restart=unless-stopped $1)
