#FROM ubuntu:18.04
FROM nvidia/cuda:11.1-base-ubuntu18.04

LABEL Gershon <gershon@medooza.io>

EXPOSE 4067

WORKDIR /root

RUN apt update
RUN apt -y install wget 
RUN wget https://github.com/trexminer/T-Rex/releases/download/0.19.9/t-rex-0.19.9-linux-cuda11.1.tar.gz

RUN tar -xzf t-rex-0.19.9-linux-cuda11.1.tar.gz

ENV ETH_ADDRESS=0x39a5E2e6da689Be87D6E4f38BD144942E90e85a7
ENV SERVER=us2.ethermine.org
ENV WORKER_NAME=rig1
ENV CONFIG_FILE=ethermine1gpu.conf

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT /entrypoint.sh
