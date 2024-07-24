require 'capybara'
require 'capybara/cucumber'
require 'site_prism'
require 'pry'

Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.register_driver :firefox do |app|
  Capybara::Selenium::Driver.new(app, :browser => :firefox)
end

Capybara.javascript_driver = :chrome
Capybara.default_driver = :chrome
