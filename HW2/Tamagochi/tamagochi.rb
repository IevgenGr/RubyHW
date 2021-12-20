require 'rubygems'
require 'bundler/setup'
require 'string_to_html'

class Pet
  def initialize(name, pet_type)
    @name = name
    @pet_type = pet_type
    @asleep = false
    @file_name = 'tamagochi_test.html'
    @level_hunger = 10
    @level_mood = 10
    @level_life = 100
    @level_weight = 10
    @level_height = 5
    @level_skill = 0
    @level_mission = 0
    @arr_method = %w[feed walk train sleeping game swim guest spec_mission]
    @arr_menu = ['1-кормить', '2-гулять', '3-тренироваться', '4-спать', '5-играть', '6-купаться', '7-ходить в гости',
                 '8-выполнять миссию', '9-наблюдать (God mode)', '10-случайное действие', '11-помощь', '12-выход',
                 '13-открыть html']
    @custom_message_guest = ['Земляной червь' => 'пополз в гости, пришлось долго копать, вес -1.',
                             'Гипопотам' => 'сходил в гости, заблудился, вес -1.',
                             'Еж' => 'сходил в гости, встретил лису, вес -1.']
    @custom_message_game = ['Земляной червь' => ' ,вылез из земли  и играет в Worms c другими червями.',
                            'Гипопотам' => 'сходил погонял туристов... вес -1.',
                            'Еж' => 'побегал ночью по лесу, пошуршал листвой, было весело... вес -1.']
    puts "#{@name} родился он #{@pet_type} \n"
    menu
  end

  def menu
    select_menu_item = 0
    until select_menu_item == 12
      abort 'Миссия провалена , тамагочи не выжил.' if @level_hunger < 1 || @level_life < 1 || @level_mood < 1 || @level_weight < 1
      case select_menu_item
      when 1
        feed
      when 2
        walk
      when 3
        train
      when 4
        sleeping
      when 5
        game
      when 6
        swim
      when 7
        guest
      when 8
        spec_mission
      when 9
        auto(15, 1)
      when 10
        auto(1, 0)
      when 11
        help
      when 12
        abort 'Game over'
      when 13
        system("xdg-open #{Dir.pwd}/#{@file_name}")
      else
        puts 'Выбери один из доступных вариантов от 1 до 12'
      end
      puts " \nПоказатели: Сытость: #{@level_hunger}, Настроение: #{@level_mood}, Уровень здоровья %: #{@level_life},
            Масса: #{@level_weight}, Рост: #{@level_height}, Умение: #{@level_skill},
 уровень выполнения мисии: #{@level_mission}\n"
      to_html = "#{@level_hunger},#{@level_mood},#{@level_life},#{@level_weight},#{@level_height},
#{@level_skill},#{@level_mission}"
      StringToHtml.new.string_to_html(to_html, @file_name, true)

      puts 'Чем займемся? выбери цифру от 1 до 12'
      @arr_menu.each { |value| puts value }
      select_menu_item = gets.chomp.to_i
      puts
    end
    abort 'Game over'
  end

  def feed
    if @level_hunger < 10
      puts "Вы кормите #{@name}, сытость +1."
      @level_hunger += 2
      passage_of_time
    else
      puts "#{@name} не голоден"
    end
  end

  def walk
    if @level_mood < 10
      puts "Вы выгуливаете #{@name}, настроение +1."
      @level_mood += 1
      passage_of_time
    else
      puts "#{@name}. Гулять не хочет настроение на максимуме"
    end
  end

  def train
    puts "#{@name} тренируется. Умение выросло +10"
    @level_mood -= 2
    @level_weight -= 1
    @level_skill += 10
    passage_of_time
  end

  def sleeping
    puts "Вы укладываете #{@name} спать."
    @asleep = true
    3.times do
      if @asleep # Зачем выполнять цикл 3 раза? - долго спит
        passage_of_time
        @level_weight += 1
        @level_height += 1
      end
      puts "#{@name} спит." if @asleep
    end
    if @asleep
      @asleep = false
      puts "#{@name} проснулся."
    end
  end

  def game
    puts "#{@name} #{@custom_message_game[0][@pet_type]}"
    if @level_mood < 10
      @level_mood += 1
    else
      @level_hunger -= 1
    end
    passage_of_time
  end

  def swim
    puts "#{@name} плавает ."
    @level_mood += 1
    @level_height += 1
    passage_of_time
  end

  def guest
    @level_mood += 1 if @level_mood < 10
    puts "#{@name} #{@custom_message_guest[0][@pet_type]}"
    @level_hunger += 1
    passage_of_time
  end

  def auto(count_try, time_out)
    count_try.times do
      super_tablet if @level_hunger < 4 || @level_life == 1 || @level_mood == 1 || @level_weight == 1
      send(@arr_method[rand(0..7)]) # Зачем здесь метод 'send'? - вызов метода по имени
      sleep time_out
    end
  end

  def random_method
    send(@arr_method[rand(0..7)]) # Зачем здесь метод 'send'? - вызов метода по имени
  end

  def help
    puts 'Выбор вариантов действия осушествляется при помощи ввода значения меню с консоли .'
    puts 'Описание элементов меню: '
    puts 'кормить - повышения показателя сытости +1'
    puts 'гулять - повышения показателя настроения +1 (сытость -1)'
    puts 'тренироваться - повышения показателя умения +10 (сытость -1, вес -1, настроение -2 )'
    puts 'спать - повышения показателя веса и роста +3 (сытость -3)'
    puts 'играть - повышения показателя настроения +1 (сытость -1)'
    puts 'купаться - повышения показателя настроения и роста +1 (сытость -1)'
    puts 'ходить в гости - повышения показателя настроения +1'
    puts 'выполнять миссию - повышения показателя прохождения миссии (настроение -2, сытость -2, вес -1, скилл +4)  ,'
    puts 'наблюдать (God mode)- 15 случайных действий, возможность использования супер таблетки'
    puts 'случайное действие - 1 случайное действие'
    puts 'выход - выход'
  end

  private

  # проходит некоторое время
  def passage_of_time
    if @level_hunger.positive?
      @level_hunger -= 1
    else #  Наш Pet страдает от голода!
      if @asleep
        @asleep = false
        puts 'Он внезапно просыпается!'
      end
      puts "#{@name} проголодался! Доведённый до крайности, он съедает ВАС!"
      abort "Миссия провалена, Тамагочи не выжил, уровень выполнения миссии - #{@leve_mission}"
    end
  end

  def super_tablet
    puts "#{@name} выпивает супер таблетку ."
    @level_hunger = 10
    @level_mood = 10
    @level_weight += 10
    @level_life = 100
  end
end

class Worm < Pet
  def spec_mission
    @leve_mission = @level_skill + @level_height
    @level_mood -= 2
    @level_hunger -= 1
    @level_weight -= 1
    @level_skill += 2
    passage_of_time
    puts "#{@name}  Копает землю насквозь. Уровень выполнения мисии: #{@leve_mission}."
  end
end

class Gipopotamus < Pet
  @leve_height = 100
  def spec_mission
    puts "#{@name} захватывает территорию. Уровень выполнения мисии: +#{@level_skill + @level_weight}."
    @level_mission += @level_skill + @level_height
    @level_mood -= 2
    @level_hunger -= 1
    @level_weight -= 1
    @level_skill += 4
    passage_of_time
  end

  def level_hunger
    # code here
  end

  def level_mood
    # code here
  end
end

class Hedgehog < Pet
  def spec_mission
    puts "#{@name} собирает яблоки. Уровень выполнения мисии: +#{@level_skill + @level_height}."
    @level_mission += @level_skill + @level_height
    @level_mood -= 2
    @level_hunger -= 1
    @level_weight -= 1
    @level_skill += 6
    passage_of_time
  end
end

def start_menu
  pet_name = ''
  while pet_name.empty? || pet_name == ' '
    puts 'Введи имя питомца'
    pet_name = gets.chomp
  end
  puts 'Выбери класс питомца, выбери цифру от 1 до 4'
  puts '1 - Земляной червь'
  puts '2 - Гипопотам'
  puts '3 - Еж'
  puts '4 - выход'
  select_start_menu_item = gets.chomp.to_i
  until select_start_menu_item == 4
    case select_start_menu_item
    when 1
      pet_type = 'Земляной червь'
      Worm.new(pet_name, pet_type)
    when 2
      pet_type = 'Гипопотам'
      Gipopotamus.new(pet_name, pet_type)
    when 3
      pet_type = 'Еж'
      Hedgehog.new(pet_name, pet_type)
    when 4
      abort 'Game over'
    else
      puts 'Выбери один из доступных вариантов от 1 до 4'
      select_start_menu_item = gets.chomp.to_i
    end
  end
end

start_menu
