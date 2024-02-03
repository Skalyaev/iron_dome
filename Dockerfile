FROM debian:latest

RUN apt-get update -y                       \
    && apt-get install -y git           \
    && apt-get install -y openssl           \
    && apt-get install -y libssl-dev        \
    && apt-get install -y make        \
    && apt-get install -y g++        \
    && mkdir /var/run/irondome              \
    && mkdir /root/irondome        \
    && mkdir -p /root/infection/sub1        \
    && mkdir -p /root/infection/sub2        \
    && echo 123 > /root/infection/test1.txt      \
    && echo 456 > /root/infection/sub1/test2.txt      \
    && echo 789 > /root/infection/sub2/test3.txt   

WORKDIR /root

COPY    include         irondome/include
COPY    src             irondome/src
COPY    Makefile        irondome/Makefile
COPY    data/*          /var/run/irondome/
COPY    openssl_cmd.sh  openssl_cmd.sh

RUN     chmod +x openssl_cmd.sh
RUN     git clone git@github.com:Skalyaeve/stockholm.git

WORKDIR /root/stockholm
RUN     make

WORKDIR /root/irondome
RUN     make

WORKDIR /root

CMD     ["sleep", "infinity"]