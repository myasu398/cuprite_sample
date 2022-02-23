# frozen_string_literal: true

require_relative 'setting'

session = Capybara::Session.new(:cuprite)
driver = session.driver
browser = driver.browser
page = browser.page
browser.visit "/"
puts page.body
