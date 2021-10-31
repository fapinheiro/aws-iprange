FROM ubuntu:20.10

RUN mkdir /home/cross
WORKDIR /home/cross
COPY . /home/cross

ENV REGION=eu-west-1

ENV SERVICE=AMAZON

# Update
RUN  apt-get update

# Install wget
RUN apt-get install -y wget

# Install curl
RUN apt-get install -y curl

# Install jq to parse json within bash scripts
RUN apt-get install -y jq

# Install vim
RUN apt-get install -y vim

RUN chmod +x /home/cross/iprange.sh

# ENTRYPOINT ["/home/cross/iprange.sh", "$REGION $SERVICE"]

CMD ["/bin/bash", "-c", "/home/cross/iprange.sh $REGION $SERVICE"]