# To build: docker build -t <namespace>/awscli .
# To run: docker run -it <namespace>/awscli
# cd /apps; aws s3 command

FROM gliderlabs/alpine:3.1
MAINTAINER Xueshan Feng <sfeng@stanford.edu>

RUN apk --update add \ 
      bash \
      curl \
      less \
      groff \
      jq \
      python \
      py-pip && \
      pip install --upgrade awscli s3cmd && \
      mkdir /root/.aws

# Expose data volume
VOLUME /apps
