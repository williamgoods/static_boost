FROM archlinux AS copy_test

RUN pacman --noconfirm -Syyu
RUN pacman -S --noconfirm extra/boost
RUN ls /usr/lib/libboost_*
RUN ls /usr/include/boost 

RUN echo "root directory: "
RUN cd /
RUN pwd
RUN ls -al

RUN echo "start to copy boost static library! "
RUN mkdir -p /boost
RUN mkdir -p /boost/include
RUN mkdir -p /boost/include/boost
RUN mkdir -p /boost/lib
RUN cp -rf /usr/lib/libboost_* /boost/lib
RUN cp -rf /usr/include/boost  /boost/include/boost
RUN ls -al
RUN pwd
RUN echo "end process of copy boost static library! "

WORKDIR /boost

FROM scratch AS export-stage
COPY --from=stage1 /boost/ .

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]
