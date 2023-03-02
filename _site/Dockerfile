FROM alpine

MAINTAINER Jesse <dev@wsgeorge.com>
ENV BUILD_PAKS ruby-dev build-base make libffi-dev 
RUN echo 'gem: --no-rdoc --no-ri' > /etc/gemrc
RUN apk update && apk upgrade && apk --update add \
    bash ruby ruby-bundler $BUILD_PAKS \
    ruby-io-console ca-certificates && update-ca-certificates && rm -rf /var/cache/apk/*
RUN gem install kramdown jekyll json 
RUN apk update
RUN apk add nano
ENTRYPOINT ["/bin/bash"]
WORKDIR home