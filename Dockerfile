FROM ruby:2.2.1

MAINTAINER Mojo Lingo LLC <hello@mojolingo.com>

RUN apt-get update -qq
RUN gem update bundler
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y build-essential libpq-dev nodejs apt-utils

RUN mkdir /app
WORKDIR /app

ADD Gemfile /app/Gemfile
ADD Gemfile.lock /app/Gemfile.lock
RUN bundle install

ADD . /app

CMD bundle exec unicorn -p $PORT -E $RACK_ENV
