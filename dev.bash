ttab redis-server /usr/local/etc/redis.conf
ttab bundle exec sidekiq --environment development -C config/sidekiq.yml
ttab redis-cli
ttab bin/webpack-dev-server
open -a "Google Chrome" 'http://localhost:3000/'
open . -a /Applications/Visual\ Studio\ Code.app
rails s
