FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.1.0.0

RUN gem install dronebl.rb --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["dronebl-query"]
CMD ["--help"]
