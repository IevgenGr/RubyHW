require './app/web_metod.rb'
require './tamagochi.rb'
# require './myrackmiddleware'


use Rack::Reloader
# Rack::Handler::WEBrick.run WebMetod.new, :Port => 9291
run WebMetod

