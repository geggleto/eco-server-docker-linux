#using multiple build steps to avoid redownloading unneccessary images and files
#setup debian base image
FROM debian:latest AS eco-docker-base
RUN apt-get update && apt-get install -y unzip wget libgdiplus

#download server files
FROM eco-docker-base AS eco-docker-zip
ENV urlfile=server-zip-url.txt
RUN mkdir /eco
COPY $urlfile /eco
WORKDIR /eco
RUN wget $(cat $urlfile)

#extract server files and finish imge
FROM eco-docker-zip
WORKDIR /eco
RUN unzip EcoServer*.zip > /dev/null
RUN rm EcoServer*.zip 
RUN chmod ug+x /eco/EcoServer
CMD ["/eco/EcoServer"]

