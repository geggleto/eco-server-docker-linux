FROM archlinux
RUN pacman -Syu unzip wget libgdiplus --noconfirm
COPY . /eco
WORKDIR /eco
RUN wget $(cat ./server-url.txt)
RUN unzip EcoServer*.zip
RUN rm EcoServer*.zip
RUN chmod ug+x EcoServer
CMD ["./EcoServer"]

