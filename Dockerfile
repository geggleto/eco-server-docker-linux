FROM debian:latest
RUN apt-get update && apt-get -y install unzip wget libgdiplus
COPY . /eco
WORKDIR /eco
RUN wget $(cat ./server-url.txt)
RUN unzip EcoServer*.zip
RUN rm EcoServer*.zip
RUN chmod ug+x EcoServer
CMD ["./EcoServer"]

