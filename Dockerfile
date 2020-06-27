FROM ubuntu:18.04
LABEL maintainer="Dogukan Cagatay <dcagatay@gmail.com>"

RUN apt-get update && apt-get install --yes --no-install-recommends \
	gnupg2 \
	ca-certificates

RUN echo "deb [ arch=amd64 ] https://downloads.skewed.de/apt bionic main" >> /etc/apt/sources.list

RUN apt-key adv --no-tty --keyserver keys.openpgp.org --recv-key 612DEFB798507F25

RUN apt-get update && apt-get install --yes --no-install-recommends \
	python3-graph-tool=2.33
