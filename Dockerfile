FROM ubuntu:16.04
MAINTAINER Dogukan Cagatay <dcagatay@gmail.com>

RUN echo -e "deb http://downloads.skewed.de/apt/xenial xenial universe\ndeb-src http://downloads.skewed.de/apt/xenial xenial universe"

RUN echo "deb http://downloads.skewed.de/apt/xenial xenial universe" >> /etc/apt/sources.list && \
	echo "deb-src http://downloads.skewed.de/apt/xenial xenial universe" >> /etc/apt/sources.list

RUN apt-key adv --keyserver pgp.skewed.de --recv-key 612DEFB798507F25

RUN apt-get update && apt-get install --yes --no-install-recommends \
	python3-graph-tool \
	python3-pip


