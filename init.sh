
ln -snf /usr/share/zoneinfo/America/Santiago /etc/localtime && echo "America/Santiago" > /etc/timezone
rm -rf /usr/src/app/tmp/pids/server.pid

RAILS_ENV=production bundle install
#DISABLE_DATABASE_ENVIRONMENT_CHECK=1 RAILS_ENV=production bundle exec rake db:drop
#RAILS_ENV=production bundle exec rake db:create
RAILS_ENV=production bundle exec rake db:migrate
#RAILS_ENV=production rake assets:precompile
#RAILS_ENV=production rake assets:clean
#RAILS_ENV=production bundle exec rake db:seed

bundle exec rails s -p 3000 -b '0.0.0.0' -e production
