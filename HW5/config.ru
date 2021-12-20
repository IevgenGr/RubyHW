require './app/web_metod'
use Rack::Reloader
use Rack::Auth::Basic do |username, password|
  password == ''
end
run WebMetod
