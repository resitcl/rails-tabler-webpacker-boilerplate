FROM ruby:2.3-alpine3.7
RUN apk update && apk add --update nodejs-npm
RUN apk --update add --virtual build_deps \
    build-base ruby-dev libc-dev linux-headers \
    libressl-dev postgresql-dev libxml2-dev libxslt-dev \
    tzdata curl yarn
RUN mkdir /usr/src/app/
WORKDIR /usr/src/app/
ADD Gemfile /usr/src/app/Gemfile
ADD Gemfile.lock /usr/src/app/Gemfile.lock
RUN RAILS_ENV=production bundle install
ADD . /usr/src/app/
RUN npm install
RUN RAILS_ENV=production bundle exec rake assets:precompile --trace
RUN RAILS_ENV=production bundle exec rake secret
EXPOSE 3000
