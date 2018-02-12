ENV['RACK_ENV'] = 'test'

require File.join(File.dirname(__FILE__), '..', 'lib/my_app.rb')

require 'capybara'
require 'capybara/rspec'
require 'rspec'

Capybara.app = MyApp
RSpec.configure do |config|
  config.include Capybara::DSL
  config.include Rack::Test::Methods

  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end
end
