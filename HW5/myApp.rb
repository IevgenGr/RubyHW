require 'rubygems'
require 'rack'
require 'webrick'
require 'stringio'

class HelloWorld
  def call(env)
    [200, {"Content-Type" => "text/html"}, ["Hello Rack!"]]
  end
end

Rack::Handler::WEBrick.run HelloWorld.new, :Port => 9292
