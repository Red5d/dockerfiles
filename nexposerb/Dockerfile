FROM ruby:alpine

MAINTAINER Red5d

# Image for working with the Ruby interface for Nexpose either
# interactively through irb, or by running volume-mounted scripts.

RUN gem install nexpose nexpose-functions --no-ri --no-rdoc

CMD /bin/sh

