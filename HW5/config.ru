require './app/web_metod'
#  require './tamagochi'
# require './app/tamagochi'
# require './myrackmiddleware'

use Rack::Reloader
# Rack::Handler::WEBrick.run WebMetod.new, :Port => 9291
run WebMetod
