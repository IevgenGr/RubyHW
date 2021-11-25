class Pet
  
  
  
 def initialize name
    @name = name
    @asleep = false
    @LevelHunger = 10  # 
    @LevelMood = 10  # 
    @LevelLife = 100
    @LeveWeight = 1
    @LeveSkill  = 0
          
    puts @name + ' родился.'
    puts "Сытость -  #{ @LevelHunger }, Настроение -  #{ @LevelMood }, Уровень здоровья % -  #{ @LevelLife }, Масса -  #{ @LeveWeight }, Рост -  #{ @LeveWeight }, Умение -  #{ @LeveSkill } "
    puts ' '
  end 
  
   def menu 
    selectMenuItem = gets.chomp
     
     until selectMenuItem == 11
     
     case x
     when 1
     when 2
     when 3
     when 4
       
 
else
  "Выбери один из доступных вариантов о 1 до 10"
     end
end
  
  
   def feed
    puts 'Вы кормите ' + @name + '(а).'
    @stuffInBelly += 5
    passageOfTime
  end
  
  def walk
    puts 'Вы выгуливаете ' + @name + '(а).'
    @stuffInIntestine += 5
    passageOfTime
  end
  
   def menu
     until gets == 1
       case 
         putToBed
       case putToBed
         
   end
  
  
  def putToBed
    puts 'Вы укладываете ' + @name + '(а) спать.'
    @asleep = true
    3.times do
      if @asleep
        passageOfTime
      end
      if @asleep
        puts @name + ' храпит, наполняя комнату дымом.'
      end
    end
    if @asleep
      @asleep = false
      puts @name + ' медленно просыпается.'
    end
  end
  
  def toss
    puts 'Вы подбрасываете ' + @name + '(а) в воздух.'
    puts 'Он хихикает, обжигая при этом вам брови.'
    passageOfTime
  end
  
  def rock
    puts 'Вы нежно укачиваете ' + @name + '(а).'
    @asleep = true
    puts 'Он быстро задрёмывает...'
    passageOfTime
    if @asleep
      @asleep = false
      puts '...но просыпается, как только вы перестали качать.'
    end
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
      exit  #  Этим методом выходим из программы.
    end
  
end


