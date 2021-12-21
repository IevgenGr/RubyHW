require 'erb'
require './app/tamagochi'

class WebMetod
  def initialize(env)
    @req = Rack::Request.new(env)
    @path = @req.path
  end

  def self.call(env)
    new(env).response.finish
  end

  def response
    case @path
    when '/'
      Rack::Response.new(render('./template/start_page.html.erb'))
    when '/game'
      @arr_parametr = @@pet.param_string.split(',')
      if @@pet.level_hunger > 1 && @@pet.level_life > 1 && @@pet.level_mood > 1 && @@pet.level_weight > 1
        @arr_message = %w[Имя: Класс: Сытость: Настроение: Здоровье: Масса: Рост: Умение: Миссия:]
        @@pet.send(@req.params.keys[0]) if @req.params.length.positive?
        Rack::Response.new(render('./template/game_page.html.erb'))
      else
        p 'dddd'
        Rack::Response.new do |response|
          response.redirect('/game_over')
        end
      end

    when '/create_pet'
      @@pet = create_pet(@req.params['textinput'], @req.params['Type_pet'])
      Rack::Response.new do |response|
        response.redirect('/game')
      end

    when '/game_over'
      Rack::Response.new do |response|
        response.redirect('/') if @req.params.length.positive?
        Rack::Response.new(render('./template/start_page.html.erb'))
      end
      Rack::Response.new(render('./template/Game_Over.html.erb'))
    else
      Rack::Response.new(render('./template/start_page.html.erb'))
    end
  end

  def render(template)
    ERB.new(File.read(template)).result(binding)
  end
end
