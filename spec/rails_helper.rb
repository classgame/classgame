ENV['RAILS_ENV'] ||= 'test'

require 'simplecov'

SimpleCov.configure do
  coverage_dir File.join('.', 'tmp', 'code_analysis', 'coverage')
end

SimpleCov.start 'rails'

require 'spec_helper'
require File.expand_path('../../config/environment', __FILE__)
require 'rspec/rails'

ActiveRecord::Migration.maintain_test_schema!

RSpec.configure do |config|
  config.use_transactional_fixtures = false
  config.before(:suite) { DatabaseCleaner.clean_with :truncation }
  config.before(:each) { DatabaseCleaner.strategy = :transaction }
  config.before(:each, js: true) { DatabaseCleaner.strategy = :truncation }
  config.before(:each) { DatabaseCleaner.start }
  config.after(:each) { DatabaseCleaner.clean }

  config.include FactoryGirl::Syntax::Methods
  config.include Devise::TestHelpers, type: :controller

  config.infer_spec_type_from_file_location!
  config.raise_errors_for_deprecations!
end
