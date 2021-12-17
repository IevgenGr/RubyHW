require 'erb'
class WebMetod

  def initialize (env)
    @path = Rack::Request.new(env).path
    p  @path

  end
  def self.call(env)
     # [200, {"Content-Type" => "text/html"}, ["Hello Rack Participants from across the globe"]]
     new(env).response.finish
  end

  def response
     Rack::Response.new(render)
  end

  def render
    ERB.new(File.read('./template/start_page.html.erb')).result( binding )
  end
  end

