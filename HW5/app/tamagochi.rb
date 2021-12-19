class Pet
  def initialize(name, pet_type)
    @name = name
    @pet_type = pet_type
    @asleep = false
    @level_hunger = 10
    @level_mood = 10
    @level_life = 100
    @level_weight = 10
    @level_height = 5
    @level_skill = 0
    @level_mission = 0
    @log = "#{Time.now}: Cтарт\n"
    @arr_method = %w[feed walk train sleeping game swim guest spec_mission]
    @custom_message_guest = ['Земляной червь' => 'пополз в гости, пришлось долго копать, вес -1.',
                             'Гипопотам' => 'сходил в гости, заблудился, вес -1.',
                             'Еж' => 'сходил в гости, встретил лису, вес -1.']
    @custom_message_game = ['Земляной червь' => ' ,вылез из земли  и играет в Worms c другими червями.',
                            'Гипопотам' => 'сходил погонял туристов... вес -1.',
                            'Еж' => 'побегал ночью по лесу, пошуршал листвой, было весело... вес -1.']
    @log = "#{Time.now}: #{@name} родился он #{@pet_type} \n" + @log
  end

  attr_accessor :level_mood, :pet_type, :name, :level_hunger, :level_life, :level_weight, :level_height, :level_skill, :level_mission, :log

  def param_string
    "#{@name},#{@pet_type},#{@level_hunger},#{@level_mood},#{@level_life},#{@level_weight},#{@level_height},#{@level_skill},#{@level_mission}"
  end

  def feed
    if @level_hunger < 10
      @log = "#{Time.now}: Вы кормите #{@name}, сытость +1.\n" + @log
      @level_hunger += 2
      passage_of_time
    else
      @log = "#{Time.now}: #{@name} не голоден\n" + @log
    end
  end

  def walk
    if @level_mood < 10
      @log = "#{Time.now}: Вы выгуливаете #{@name}, настроение +1.\n" + @log
      @level_mood += 1
      passage_of_time
    else
      @log = "#{Time.now}: #{@name}. Гулять не хочет настроение на максимуме\n" + @log
    end
  end

  def train
    @log = "#{Time.now}: #{@name} тренируется. Умение выросло +10\n" + @log
    @level_mood -= 2
    @level_weight -= 1
    @level_skill += 10
    passage_of_time
  end

  def sleeping
    @log =  "#{Time.now}: Вы укладываете #{@name} спать.\n" + @log
    @asleep = true
    3.times do
      if @asleep # Зачем выполнять цикл 3 раза? - долго спит
        passage_of_time
        @level_weight += 1
        @level_height += 1
      end
      @log =  "#{@name} спит.\n" + @log if @asleep
    end
    if @asleep
      @asleep = false
      @log =  "#{Time.now}: #{@name} проснулся.\n" + @log
    end
  end

  def game
    @log = "#{@name} #{@custom_message_game[0][@pet_type]}\n" + @log
    if @level_mood < 10
      @level_mood += 1
    else
      @level_hunger -= 1
    end
    passage_of_time
  end

  def swim
    @log = "#{Time.now}: #{@name} плавает .\n" + @log
    @level_mood += 1
    @level_height += 1
    passage_of_time
  end

  def guest
    @level_mood += 1 if @level_mood < 10
    @log = "#{@name} #{@custom_message_guest[0][@pet_type]}\n" + @log
    @level_hunger += 1
    passage_of_time
  end

  def auto
    15.times do
      super_tablet if @level_hunger < 4 || @level_life == 1 || @level_mood == 1 || @level_weight == 1
      send(@arr_method[rand(0..7)]) # Зачем здесь метод 'send'? - вызов метода по имени
    end
  end

  private

  # проходит некоторое время
  def passage_of_time
    if @level_hunger.positive?
      @level_hunger -= 1
    else #  Наш Pet страдает от голода!
      if @asleep
        @asleep = false
        @log += "#{Time.now}: Он внезапно просыпается!\n" + @log
      end
      @log = "#{Time.now}: #{@name} проголодался! Доведённый до крайности, он съедает ВАС!\n" + @log
      @log = "#{Time.now}: Миссия провалена, Тамагочи не выжил, уровень выполнения миссии - #{@leve_mission}\n" + @log
    end
  end

  def super_tablet
    @log = "#{Time.now}: #{@name} выпивает супер таблетку .\n" + @log
    @level_hunger = 10
    @level_mood = 10
    @level_weight += 10
    @level_life = 100
  end
end

class Worm < Pet
  def spec_mission
    @level_mission += @level_skill + @level_height
    @level_mood -= 2
    @level_hunger -= 1
    @level_weight -= 1
    @level_skill += 2
    passage_of_time
    @log =  "#{Time.now}: #{@name}  Копает землю насквозь. Уровень выполнения мисии: #{@leve_mission}.\n" + @log
  end
end

class Gipopotamus < Pet
  @leve_height = 100
  def spec_mission
    @log =  "#{Time.now}: #{@name} захватывает территорию. Уровень выполнения мисии: +#{@level_skill + @level_weight}.\n" + @log
    @level_mission += @level_skill + @level_height
    @level_mood -= 2
    @level_hunger -= 1
    @level_weight -= 1
    @level_skill += 4
    passage_of_time
  end
end

class Hedgehog < Pet
  def spec_mission
    @log = "#{Time.now}: #{@name} собирает яблоки. Уровень выполнения мисии: +#{@level_skill + @level_height}.\n" + @log
    @level_mission += @level_skill + @level_height
    @level_mood -= 2
    @level_hunger -= 1
    @level_weight -= 1
    @level_skill += 6
    passage_of_time
  end
end

def create_pet(name, type_pet)
  name = 'Noname' if name == ''
  p name
  type_pet = '1' if type_pet.nil?

  case type_pet
  when '1'
    pet_type = 'Земляной червь'
    Worm.new(name, pet_type)
  when '2'
    pet_type = 'Гипопотам'
    Gipopotamus.new(name, pet_type)
  when '3'
    pet_type = 'Еж'
    Hedgehog.new(name, pet_type)
  else
    puts 'Выбери один из доступных вариантов от 1 до 4'
  end
end
