require 'capybara'
require 'capybara/dsl'
require 'selenium-webdriver'
require 'rspec'
# require 'allure-cucumber'
require_relative '../../config'

include BaseConstants
include Capybara::DSL
include RSpec::Matchers

RSpec.configure do |config|
  config.include Capybara::DSL, type: :feature
end

Capybara.configure do |config|
  config.default_driver = :selenium
  config.default_selector = :css
  config.app_host = BASE_URL
  config.default_max_wait_time = 10
end


#headless disable-dev-shm-usage no-sandbox
Capybara.register_driver :selenium do |app|
  capabilities = Selenium::WebDriver::Remote::Capabilities.chrome(
      chromeOptions: { args: %w(no-sandbox start-maximized) }
  )
  Capybara::Selenium::Driver.new(app,:browser => :remote, :url => "http://localhost:4444/wd/hub",
                                 desired_capabilities: capabilities)
end

