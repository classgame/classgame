source 'https://rubygems.org'

gem 'rails', '4.2.6'
gem 'mysql2', '>= 0.3.13', '< 0.5'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'devise'
gem 'simple_form'
gem 'therubyracer'
gem 'twitter-bootstrap-rails'

#paperclip
gem 'paperclip', '~> 5.0.0'

gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

#activeadmin
gem 'activeadmin', github: 'activeadmin'
gem 'active_admin_editor', github: 'ejholmes/active_admin_editor', ref: '86f964be3071cd938c3cd17ad00df94ece3a50c0'

group :development, :test do
  gem 'mailcatcher'
  gem 'factory_girl_rails', '~> 4.0'
  gem 'pry-byebug'
  gem 'pry-rails'
  gem 'pry-rescue'
end

group :development do
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'quiet_assets'
  gem 'byebug'
  gem 'web-console', '~> 2.0'
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'thin'
  gem 'annotate', '~> 2.6.6'
  gem 'mina-multistage', require: false
  gem 'mina'
  gem 'parallel_tests'
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

