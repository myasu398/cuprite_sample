# frozen_string_literal: true

class App
  def call(env)
    html = "<html><head><script>function changeText() { document.querySelector('#text').textContent = 'Change Text'; }</script></head><body><h1 id='text'>Hello World!</h1><button onclick=changeText()>Click</button></body></html>"
    [200,{ "Content-Type" => "text/html" },[html]]
  end
end
run App.new