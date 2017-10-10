source 'https://rubygems.org'

ruby '2.4.2'

gem 'rails', '5.1.4'
gem 'mysql2'
gem 'sass-rails'
gem 'uglifier'
gem 'coffee-rails'
gem 'devise'
gem 'simple_form'
gem 'pry-byebug'

#boostrap
gem "therubyracer"
gem "twitter-bootstrap-rails"

#paperclip
gem "paperclip"

# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
gem 'jbuilder'
# bundle exec rake doc:rails generates the API under doc/api.

#activeadmin 
gem 'activeadmin'
gem 'active_admin_editor', github: "ejholmes/active_admin_editor"

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'mailcatcher'
  gem "factory_girl_rails"
  gem 'pry-rails'
  gem 'pry-rescue'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'spring'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring

  gem 'byebug'
  gem 'web-console'
  gem "better_errors"
  gem "binding_of_caller"
  gem 'thin'
  gem 'annotate'
  gem 'mina-multistage', require: false
  gem 'mina'

  gem "parallel_tests"
end

group :test do
  gem 'rspec-rails', '~> 3.0.0'
  gem 'capybara'
  gem 'selenium-webdriver'
  gem 'shoulda-matchers'
  gem 'webmock'
  gem 'launchy'
  gem 'database_cleaner'
end
