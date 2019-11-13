bundle exec rails db:drop:_unsafe
bundle exec rake db:migrate RAILS_ENV=development
bundle exec rake db:seed  RAILS_ENV=development