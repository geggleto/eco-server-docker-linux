#using multiple build steps to avoid redownloading unneccessary images and files
#setup debian base image and clean up to save space
FROM debian:latest AS eco-docker-base
RUN apt-get update \
    && apt-get install -y unzip wget libgdiplus \
    && apt-get clean -y \
    && rm -rf /var/lib/apt/lists/*

#download server files
FROM eco-docker-base AS eco-docker-zip
ENV urlfile=server-zip-url.txt
WORKDIR /eco
COPY $urlfile .
RUN wget $(cat $urlfile)

#extract server files and finish imge
FROM eco-docker-zip AS eco-server
WORKDIR /eco
RUN rm /eco/$urlfile
RUN unzip EcoServer*.zip > /dev/null
RUN rm EcoServer*.zip 
RUN chmod ug+x /eco/EcoServer
CMD ["/eco/EcoServer"]

