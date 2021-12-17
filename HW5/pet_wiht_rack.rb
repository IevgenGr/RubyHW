class MyApp
  def call(env)
    [200, {"Content-Type" => "text/html"}, ["Hello Rack Participants from across the globe"]]
  end
end

class MyRackMiddleware
  def initialize(appl)
    @appl = appl
  end
  def call(env)
    status, headers, body = @appl.call(env)
    append_s = "... greetings from RubyLearning!!"
    [status, headers, body << append_s]
  end
end

def pp(hash)
  hash.map {|key,value| "#{key} => #{value}"}.sort.join("<br/>")
end




