require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require 'phantomjs'

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...
  

  require 'capybara/rails'
  class ActionDispatch::IntegrationTest
    include Capybara::DSL
    def teardown
      Capybara.reset_sessions!
      Capybara.use_default_driver
    end
  end

  require 'capybara/poltergeist'
  Capybara.default_driver = :poltergeist
end
