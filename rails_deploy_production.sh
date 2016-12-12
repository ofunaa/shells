bundle exec rake assets:precompile RAILS_ENV=production
bundle exec rake db:create RAILS_ENV=production
bundle exec rake db:migrate RAILS_ENV=production

DOT_FILE=".env"

echo "RAILS_SERVE_STATIC_FILES=true" >> ${DOT_FILE}
bundle exec rake secret >> ${DOT_FILE}
