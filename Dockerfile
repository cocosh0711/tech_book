FROM ruby:2.7.1-alpine

RUN apk update --no-cache && \
  apk add build-base gmp-dev libxslt-dev libxml2-dev libcurl postgresql postgresql-dev

WORKDIR /myapp

COPY Gemfile Gemfile.lock /myapp/
RUN bundle install -j4
COPY . /myapp
