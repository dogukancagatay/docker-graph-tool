FROM ubuntu:18.04
MAINTAINER Dogukan Cagatay <dcagatay@gmail.com>

RUN apt-get update && apt-get install --yes --no-install-recommends \
	gnupg2

RUN echo "deb http://downloads.skewed.de/apt/bionic bionic universe" >> /etc/apt/sources.list && \
	echo "deb-src http://downloads.skewed.de/apt/bionic bionic universe" >> /etc/apt/sources.list

# RUN apt-key adv --keyserver keys.openpgp.org --recv-key 612DEFB798507F25
RUN apt-key adv --no-tty --keyserver hkp://pool.sks-keyservers.net --recv-key 612DEFB798507F25

RUN apt-get update && apt-get install --yes --no-install-recommends \
	python3-graph-tool=2.30-1
