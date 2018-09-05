FROM ruby:2.3.3
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs npm
RUN mkdir /usr/src/app/
WORKDIR /usr/src/app/
ADD Gemfile /usr/src/app/Gemfile
ADD Gemfile.lock /usr/src/app/Gemfile.lock
RUN RAILS_ENV=production bundle install
ADD . /usr/src/app/
RUN RAILS_ENV=production bundle exec rake assets:precompile --trace
RUN RAILS_ENV=production bundle exec rake secret
EXPOSE 3000
