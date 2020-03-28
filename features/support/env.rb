require "capybara"
require "capybara/cucumber"
require "selenium-webdriver"
require "pry"

Capybara.configure do |config|
  config.default_driver = :selenium
  config.app_host = "http://0.0.0.0:8080" # Docker ToolBox no Windows
  #config.app_host = "http://localhost:8080" # Docker no Mac ou Linux
end
