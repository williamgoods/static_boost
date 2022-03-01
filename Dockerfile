FROM archlinux

RUN pacman --noconfirm -Syyu
RUN pacman -S --noconfirm extra/boost
RUN ls /usr/lib/libboost_*
RUN ls /usr/include/boost 

RUN pwd
RUN ls -al

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]
