# frozen_string_literal: true

require_relative 'setting'
require 'capybara/dsl'
require 'test/unit'

Capybara.default_driver = :cuprite

class SystemTestCase < Test::Unit::TestCase
  include Capybara::DSL
  def test_foo
    visit '/'
    assert_equal(page.find('h1').text, 'Hello World!')
    page.click_on 'Click'
    assert_equal(page.find('h1').text, 'Change Text')
  end
end