# frozen_string_literal: true

class App
  def call(env)
    [
      200,{ "Content-Type" => "text/html" },
      ["<html><head></head><body><h1>Hello World!</h1></body></html>"]
    ]
  end
end
run App.new