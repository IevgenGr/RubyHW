class Pet

  def initialize (name, petType)
    @name = name
    @petType = petType 
    @asleep = false
    @LevelHunger = 10   
    @LevelMood = 10   
    @LevelLife = 100
    @LeveWeight = 10
    @LeveHeight  = 5
    @LeveSkill  = 0
    @LeveMission  = 0
    @ArrMethod = ['feed', 'walk', 'train', 'sleeping', 'game', 'swim', 'guest', 'specMission']
    @ArrMenu = ['1-кормить', '2-гулять', '3-тренироваться', '4-спать', '5-играть', '6-купаться', '7-ходить в гости', '8-выполнять миссию', '9-наблюдать (God mode)', '10-случайное действие', '11-помощь', '12-выход']
    @customMessageGuest = ['Земляной червь' => 'пополз в гости, пришлось долго копать, вес -1.','Гипопотам' => 'сходил в гости, заблудился, вес -1.', 'Еж' => 'сходил в гости, встретил лису, вес -1.']
    @customMessageGame = ['Земляной червь' => ' ,вылез из земли  и играет в Worms c другими червями.','Гипопотам' => 'сходил погонял туристов... вес -1.', 'Еж' => 'побегал ночью по лесу, пошуршал листвой, было весело... вес -1.']
    puts "#{@name} родился он #{@petType} \n"
    menu
  end 
  
  def menu 
    selectMenuItem = 0
      until selectMenuItem == 12
        if @LevelHunger < 1 || @LevelLife < 1 || @LevelMood < 1 || @LeveWeight < 1
          abort 'Миссия провалена , тамагочи не выжил.'  
        end
        case selectMenuItem
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
          specMission
        when 9
          auto(15,1)
        when 10
          auto(1,0)
        when 11
          help
        when 12
          abort 'Game over'
        else
          puts 'Выбери один из доступных вариантов от 1 до 12'
        end
        puts  " \nПоказатели: Сытость: #{@LevelHunger}, Настроение: #{@LevelMood}, Уровень здоровья %: #{@LevelLife}, Масса: #{@LeveWeight}, Рост: #{@LeveHeight}, Умение: #{@LeveSkill}, уровень выполнения мисии: #{@LeveMission}\n"
        puts "Чем займемся? выбери цифру от 1 до 12" 
        @ArrMenu.each {|value| puts value  }
        selectMenuItem = gets.chomp.to_i
        puts
      end
     abort 'Game over'
   end

   def feed
     if @LevelHunger < 10
        puts 'Вы кормите ' + @name + ', сытость +1.'
        @LevelHunger += 2
        passageOfTime
     else puts  @name + ' не голоден'
     end
   end

  def walk
    if @LevelMood < 10
      puts 'Вы выгуливаете ' + @name + ', настроение +1.'
      @LevelMood += 1
      passageOfTime
    else
      puts  @name + '. Гулять не хочет настроение на максимуме'
    end
  end

  def train 
    puts  @name + ' тренируется. Умение выросло +10'
    @LevelMood -= 2
    @LeveWeight -= 1
    @LeveSkill += 10
    passageOfTime
  end

  def sleeping
    puts 'Вы укладываете ' + @name + ' спать.'
    @asleep = true
    3.times do
      if @asleep
        passageOfTime
        @LeveWeight += 1
        @LeveHeight += 1
      end
      if @asleep
        puts @name + ' спит.'
      end
    end
    if @asleep
      @asleep = false
      puts @name + ' проснулся.'
    end
  end

  def game
    puts  @name + ' ' + @customMessageGame[0][@petType]
      if @LevelMood < 10
         @LevelMood += 1
      else 
        @LevelHunger -= 1
      end
        passageOfTime
    end

  def swim
    puts  @name + ' плавает .'
    @LevelMood += 1
    @LeveHeight += 1
    passageOfTime
  end

  def guest
    if @LevelMood < 10
       @LevelMood += 1
    end
      puts  @name + ' ' + @customMessageGuest[0][@petType]
      @LevelHunger += 1
      passageOfTime
  end
   
  def auto(count_try, taimOut)
    count_try.times do
      if @LevelHunger < 4 || @LevelLife == 1 || @LevelMood == 1 || @LeveWeight == 1
        superTablet 
      end
      self.send(@ArrMethod[rand(0..7)])
      sleep taimOut
     end
  end

  def randomMethod 
    self.send(@ArrMethod[rand(0..7)])
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
  
  def passageOfTime # проходит некоторое время
    if @LevelHunger > 0
       @LevelHunger -= 1
    else  #  Наш Pet страдает от голода!
      if @asleep
        @asleep = false
        puts 'Он внезапно просыпается!'
      end
      puts @name + ' проголодался! Доведённый до крайности, он съедает ВАС!'
      abort 'Миссия провалена, Тамагочи не выжил, уровень выполнения миссии - ' + @LeveMission.to_s
    end 
  end

  def superTablet 
    puts  @name + ' выпивает супер таблетку .'
    @LevelHunger = 10
    @LevelMood = 10
    @LeveWeight += 10
    @LevelLife = 100 
  end
end

class Worm < Pet

  def specMission 
    puts  @name + ' Копает землю насквозь. ' ' Уровень выполнения мисии: +' + (@LeveSkill+@LeveHeight).to_s  + '.'
    @LeveMission += @LeveSkill+@LeveHeight 
    @LevelMood -= 2
    @LevelHunger -= 1
    @LeveWeight -= 1
    @LeveSkill +=2
    passageOfTime
  end
end 
 
class Gipopotam < Pet
  @LeveHeight  = 100

  def specMission 
    puts  @name + ' захватывает территорию. Уровень выполнения мисии: +' + (@LeveSkill+@LeveWeight).to_s  + '.'
    @LeveMission += @LeveSkill+@LeveHeight 
    @LevelMood -= 2
    @LevelHunger -= 1
    @LeveWeight -= 1
    @LeveSkill +=4
    passageOfTime
  end
end 

class Hedgehog < Pet
   
  def specMission 
    puts  @name + ' собирает яблоки. Уровень выполнения мисии: +' + (@LeveSkill+@LeveHeight).to_s  + '.'
    @LeveMission += @LeveSkill+@LeveHeight 
    @LevelMood -= 2
    @LevelHunger -= 1
    @LeveWeight -= 1
    @LeveSkill += 6
    passageOfTime
  end
end 

def startMenu 
  pet_name='' 
  while pet_name.empty? || pet_name == ' '
    puts "Введи имя питомца" 
    pet_name = gets.chomp
  end
  puts "Выбери класс питомца, выбери цифру от 1 до 4" 
  puts '1 - Земляной червь'
  puts '2 - Гипопотам'
  puts '3 - Еж'
  puts '4 - выход'
  selectStartMenuItem = gets.chomp.to_i
  until selectStartMenuItem == 4
    case selectStartMenuItem
    when 1
      pet_type = 'Земляной червь'
      pet = Worm.new(pet_name, pet_type)
    when 2
      pet_type = 'Гипопотам'  
      pet = Gipopotam.new(pet_name, pet_type)
    when 3
      pet_type = 'Еж'
      pet = Hedgehog.new(pet_name, pet_type)
    when 4
      abort 'Game over'
    else
      puts "Выбери один из доступных вариантов от 1 до 4"
      selectStartMenuItem = gets.chomp.to_i
    end
  end
end


startMenu()
