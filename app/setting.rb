# frozen_string_literal: true
require "capybara/cuprite"

options = {
  url: 'http://chrome:3333',
  browser_options: { 'no-sandbox': nil },
  base_url: "http://web"
}

Capybara.register_driver(:cuprite) do |app|
  Capybara::Cuprite::Driver.new(app,options)
end
Capybara.javascript_driver = :cuprite
Capybara.server_host = "0.0.0.0"
Capybara.app_host = "http://web:80"
