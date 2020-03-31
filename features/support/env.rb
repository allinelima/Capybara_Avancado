require "capybara"
require "capybara/cucumber"
require "selenium-webdriver"
require "pry"

require_relative "helpers"

World(Helpers)

Capybara.configure do |config|
  config.default_driver = :selenium
  config.app_host = "http://0.0.0.0:8080" # Docker ToolBox no Windows
  config.default_max_wait_time = 5
end
