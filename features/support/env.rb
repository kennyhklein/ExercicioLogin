require "capybara/cucumber"
require "selenium-webdriver"
require "site_prism"

Capybara.register_driver :selenium do |app|
  options = Selenium::WebDriver::Chrome::Options.new(args: [])
  Capybara::Selenium::Driver.new(app, :browser => :chrome, options: options)
end

Capybara.default_driver = :selenium

Capybara.configure do |config|
    config.default_max_wait_time = 10
end
