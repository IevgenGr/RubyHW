p '1. Дан целочисленный массив. Необходимо вывести вначале его элементы с четными индексами, а затем - с нечетными.'
p 'arr=[1,5,6,45,23,2,47]'
arr=[1,5,6,45,23,2,47]
def ChetNechet (arr, number)
  if number%2>0
  	arr.each_index {|x| puts arr[x] if x % 2>0}
  end
    if number%2==0
  	arr.each_index {|x| puts arr[x] if (x)% 2==0}
  end
  puts
end

ChetNechet(arr,0)
ChetNechet(arr,1)
p '----------------------------'

p '2 Дан целочисленный массив. Необходимо вывести вначале его элементы с нечетными индексами, а затем - четными.'	
p 'arr=[1,5,6,45,23,2,47]'
arr=[1,5,6,45,23,2,47]
def ChetNechet (arr, number)
  if number%2>0
  	arr.each_index {|x| puts arr[x] if x % 2>0}
  end
    if number%2==0
  	arr.each_index {|x| puts arr[x] if (x)% 2==0}
  end
  puts

end

ChetNechet(arr,1)
ChetNechet(arr,0)
p '----------------------------'


p '3.Дан целочисленный массив. Вывести номер первого из тех его элементов, которые удовлетворяют двойному неравенству: A[0] < A[i] < A[-1]. Если таких элементов нет, то вывести [ ].	'																								
p 'arr=[1,52,6,49,23,2,3]'

arr=[1,52,6,49,23,2,3]

 arr.length.times do | i | 
     if (arr[0] < arr[i])&(arr[i]< arr[-1])
     @indexFirstElement=i
       break
     end
    end
p @indexFirstElement
p '----------------------------'
  


p '4.Дан целочисленный массив. Вывести номер последнего из тех его элементов, которые удовлетворяют двойному неравенству: A[0] < A[i] < A[-1]. Если таких элементов нет, то вывести [ ].'																									
p 'arr=[1,52,6,49,23,30,27]'
arr=[1,52,6,49,23,30,27]

 arr.length.times do | i | 
     if (arr[0] < arr[i])&(arr[i]< arr[-1])
     @indexLastElement=i
     end
    end
p @indexLastElement
p '----------------------------'


p '5.Дан целочисленный массив. Преобразовать его, прибавив к четным числам первый элемент. Первый и последний элементы массива не изменять.'
p 'arr=[1,52,6,49,23,30,28]'

arr=[1,52,6,49,23,30,28]
arr.length.times do | i | 
     if (arr[i]%2==0)&(i != 0)&(i != (arr.length-1))
     arr[i]=arr[i]+arr[0]
     end
  end
p arr
p '----------------------------'
  


p '6.Дан целочисленный массив. Преобразовать его, прибавив к четным числам последний элемент. Первый и последний элементы массива не изменять.'
p 'arr=[1,52,6,49,23,30,28]'
arr=[1,52,6,49,23,30,28]

 arr.length.times do | i | 
     if (arr[i]%2==0)&(i != 0)&(i != (arr.length-1))
     arr[i]=arr[i]+arr[arr.length-1]
     end
  end
p arr
p '----------------------------'
  
p '7.Дан целочисленный массив. Преобразовать его, прибавив к нечетным числам последний элемент. Первый и последний элементы массива не изменять.'
p 'arr=[1,52,6,49,23,30,28]'

arr=[1,52,6,49,23,30,28]
arr.length.times do | i | 
     if (arr[i]%2>0)&(i != 0)&(i != (arr.length-1))
     arr[i]=arr[i]+arr[arr.length-1]
     end
  end
p arr
p '----------------------------'

p '8.Дан целочисленный массив. Преобразовать его, прибавив к нечетным числам первый элемент. Первый и последний элементы массива не изменять.'
p 'arr=[1,52,6,49,23,30,27]'

arr=[1,52,6,49,23,30,27]
 arr.length.times do | i | 
     if (arr[i]%2>0)&(i != 0)&(i != (arr.length-1))
     arr[i]=arr[i]+arr[0]
     end
  end
p arr
p '----------------------------'


p '9.Дан целочисленный массив. Заменить все положительные элементы на значение минимального.'		
p 'arr=[1,52,-6,49,-23,30,27]'

arr=[1,52,-6,49,-23,30,27]
 arr.length.times do | i | 
     if (arr[i]>0)
     arr[i]=arr.min
     end
  end
print arr
p '----------------------------'


p '10.Дан целочисленный массив. Заменить все положительные элементы на значение максимального.'
 p 'arr=[1,52,-6,49,-23,30,27]'

 arr=[1,52,-6,49,-23,30,27]
 arr.length.times do | i | 
     if (arr[i]>0)
     arr[i]=arr.max
     end
  end
print arr 
p '----------------------------'

p '11.Дан целочисленный массив. Заменить все отрицательные элементы на значение минимального.'	
p 'arr=[1,52,-6,49,-23,30,27]'

arr=[1,52,-6,49,-23,30,27]
arr.length.times do | i | 
     if (arr[i]<0)
     arr[i]=arr.min
     end
  end
print arr
p '----------------------------'

p '12.Дан целочисленный массив. Заменить все отрицательные элементы на значение максимального.	'
p 'arr=[1,52,-6,49,-23,30,27]'

arr=[1,52,-6,49,-23,30,27]
 arr.length.times do | i | 
     if (arr[i]<0)
     arr[i]=arr.max
     end
  end
print arr
p '----------------------------'


p '13.Дан целочисленный массив. Осуществить циклический сдвиг элементов массива влево на одну позицию.'	
p 'arr=[1,52,-6,49,-23,30,27]'

arr=[1,52,-6,49,-23,30,27]
arr=arr.rotate
print arr
p '----------------------------'


p '14.Дан целочисленный массив. Осуществить циклический сдвиг элементов массива вправо на одну позицию.'
p 'arr=[1,52,-6,49,-23,30,27]'

arr=[1,52,-6,49,-23,30,27]
arr=arr.rotate(-1)
print arr
p '----------------------------'


p '15.Дан целочисленный массив. Проверить, образуют ли элементы арифметическую прогрессию. Если да, то вывести разность прогрессии, если нет - вывести nil.'
p 'arr=[1,4,7,10,13,16,19]'

arr=[1,4,7,10,13,16,19]
diffProgression=arr[1]-arr[0]
 (arr.length-1).times do | i | 
     if ((arr[i+1]-arr[i]) != diffProgression)
      diffProgression= nil  
     break
     end
  end
puts diffProgression
p '----------------------------'



p '16. Дан целочисленный массив. Проверить, образуют ли элементы геометрическую прогрессию. Если да, то вывести знаменатель прогрессии, если нет - вывести nil.'
p 'arr=[1,3,9,27,81,243,729]'
arr=[1,3,9,27,81,243,729]
znamenatelProgresii=arr[1]/arr[0]
 (arr.length-1).times do | i | 
     if ((arr[i+1]/arr[i]) != znamenatelProgresii)
      znamenatelProgresii= nil  
     break
     end
  end
puts znamenatelProgresii
p '----------------------------'

p '17.Дан целочисленный массив. Найти количество его локальных максимумов.	'
p 'arr=[1,11,12,27,81,3,729,576]'

arr=[1,11,12,27,81,3,729,576]
countLocalMax=0
 (arr.length-2).times do | i | 
     if ((arr[i+1]>arr[i])&(arr[i+1]>arr[i+2]))
     countLocalMax= countLocalMax+1  
     end
  end
puts countLocalMax
p '----------------------------'


p '18.Дан целочисленный массив. Найти количество его локальных минимумов.	'
p 'arr=[1,11,4,27,81,3,729,576]'
arr=[1,11,4,27,81,3,729,576]
countLocalMin=0
 (arr.length-2).times do | i | 
     if ((arr[i+1]<arr[i])&(arr[i+1]<arr[i+2]))
     countLocalMin= countLocalMin+1  
     end
  end
puts countLocalMin
p '----------------------------'

p '19.Дан целочисленный массив. Найти максимальный из его локальных максимумов.'
p 'arr=[1,11,14,13,81,564,3,576]'
arr=[1,11,14,13,81,564,3,576]
arrMax=Array.new
 (arr.length-2).times do | i | 
     if ((arr[i+1]>arr[i])&(arr[i+1]>arr[i+2]))
     arrMax.push(arr[i+1])  
     end
  end
puts arrMax.max
p '----------------------------'



p '20.Дан целочисленный массив. Найти минимальный из его локальных минимумов.		'
p 'arr=[1,11,14,13,81,564,729,576]'
arr=[1,11,14,13,81,564,729,576]
arrMin=Array.new
 (arr.length-2).times do | i | 
     if ((arr[i+1]<arr[i])&(arr[i+1]<arr[i+2]))
     arrMin.push(arr[i+1])  
     end
  end
puts arrMin.min
p '----------------------------'



p '21.Дан целочисленный массив. Определить количество участков, на которых его элементы монотонно возрастают.   '
p 'arr=[1,11,12,27,81,3,729,999]'

arr=[1,2,3,4,5,1,2,1]
countLocalMax=0
 (arr.length-2).times do | i | 
     if ((arr[i+1]>arr[i])&(arr[i+1]>arr[i+2]))or((i==(arr.length-3))&((arr[i+1]>arr[i])))
     countLocalMax= countLocalMax+1  
     end
 end
puts countLocalMax
p '----------------------------'


p '22.Дан целочисленный массив. Определить количество участков, на которых его элементы монотонно убывают.'
p 'arr=[1,11,4,27,81,3,729,576]'
arr=[1,11,4,27,81,3,729,576]
countLocalMin=0
 (arr.length-2).times do | i | 
     if ((arr[i+1]<arr[i])&(arr[i+1]<arr[i+2]))
     countLocalMin= countLocalMin+1  
     end
  end
puts countLocalMin
p '----------------------------'
  

p '23.Дано вещественное число R и массив вещественных чисел. Найти элемент массива, который наиболее близок к данному числу.    '
p 'arr=[1.0,4.0,7.0,10.0,13.5,16.0,4.0], R=45'

arr=[1.0,4.0,7.0,10.0,13.5,16.0,4.0]
R=45.0
nearestValue=arr[0]
diff=(arr[0]-R).abs
 arr.length.times do | i | 
      
    if diff>(arr[i]-R).abs
       diff= (arr[i]-R).abs
       nearestValue=arr[i]
      end
end
puts nearestValue

p '----------------------------'


p '24.Дано вещественное число R и массив вещественных чисел. Найти элемент массива, который наименее близок к данному числу.'
p ' arr=[1.0,4.0,7.0,10.0,13.5,16.0,4.0], R=10.0'

arr=[1.0,4.0,7.0,10.0,13.5,16.0,4.0]
R=10.0
nearestValue=arr[0]
diff=(arr[0]-R).abs
 arr.length.times do | i | 
      if diff<(arr[i]-R).abs
       diff= (arr[i]-R).abs
       nearestValue=arr[i]
      end
end
puts nearestValue

p '----------------------------'



p ' 25.Дан целочисленный массив. Преобразовать его, вставив перед каждым положительным элементом нулевой элемент.   '
p 'arr=[1,52,-6,49,99,27]'
count_shift=0
arr=[1,52,-6,49,99,27]
arr2=[1,52,-6,49,99,27]
 arr.length.times do | i | 
     if (arr[i]>0)
     arr2.insert((i+count_shift), 0) 
     count_shift=count_shift+1 
     end
  end
print arr2
puts
p '----------------------------'


p '26.Дан целочисленный массив. Преобразовать его, вставив перед каждым отрицательным элементом нулевой элемент.    '
p 'arr=[1,52,-6,49,-99,27]'

count_shift=0
arr=[1,52,-6,49,-99,27]
arr2=[1,52,-6,49,-99,27]
 arr.length.times do | i | 
     if (arr[i]<0)
     arr2.insert((i+count_shift), 0) 
     count_shift=count_shift+1 
     end
  end
print arr2
puts
p '----------------------------'





p '27.Дан целочисленный массив. Преобразовать его, вставив после каждого положительного элемента нулевой элемент.'  
p 'arr=[1,52,-6,49,99,27]'

count_shift=1
arr=[1,52,-6,49,99,27]
arr2=[1,52,-6,49,99,27]
 arr.length.times do | i | 
     if (arr[i]>0)
     arr2.insert((i+count_shift), 0) 
     count_shift=count_shift+1 
     end
  end
print arr2
puts
p '----------------------------'

p '28.Дан целочисленный массив. Преобразовать его, вставив после каждого отрицательного элемента нулевой элемент.    '
p 'arr=[1,52,-6,49,-99,27]'

count_shift=1
arr=[1,52,-6,49,-99,27]
arr2=[1,52,-6,49,-99,27]
 arr.length.times do | i | 
     if (arr[i]<0)
     arr2.insert((i+count_shift), 0) 
     count_shift=count_shift+1 
     end
  end
print arr2
puts
p '----------------------------'

p '29.Дан целочисленный массив. Упорядочить его по возрастанию.	'	
p 'arr=[1,52,-6,49,-99,27]'

arr=[1,52,-6,49,-99,27].sort
print arr
puts
p '----------------------------'


p '30.Дан целочисленный массив. Упорядочить его по убыванию.	'
p 'arr=[1,52,-6,49,-99,27]'

arr=[1,52,-6,49,-99,27].sort.reverse
print arr
puts
p '----------------------------'

p '31.Дан целочисленный массив. Вывести индексы массива в том порядке, в котором соответствующие им элементы образуют убывающую последовательность.	'
p 'arr=[1,52,-6,49,-99,27]'

arr=[1,52,-6,49,-99,27]
print arr.map.with_index{ |e, i| [e, i] }.sort_by{ |e, i| -e }.map{ |e, i| i }
puts
p '----------------------------'


p '32.Дан целочисленный массив. Вывести индексы массива в том порядке, в котором соответствующие им элементы образуют возрастающую последовательность.'
p 'arr=[1,52,-6,49,-99,27]'

arr=[1,52,-6,49,-99,27]
print arr.map.with_index{ |e, i| [e, i] }.sort_by{ |e, i| e }.map{ |e, i| i }
puts
p '----------------------------'

p '33.Дан целочисленный массив. Найти индекс минимального элемента.	'
p 'arr=[1,52,-6,49,-99,27]'
arr=[1,52,-6,49,-99,27]
puts arr.index(arr.min)
p '----------------------------'


p '34.Дан целочисленный массив. Найти индекс максимального элемента.''
p 'arr=[1,52,-6,49,-99,27]'
arr=[1,52,-6,49,-99,27]
puts arr.index(arr.max)
p '----------------------------'


p '35.Дан целочисленный массив. Найти индекс первого минимального элемента.	'
p 'arr=[1,52,-6,49,-99,27]'
arr=[1,52,-6,49,-99,27]
print arr.map.with_index{ |e, i| [e, i] }.sort_by{ |e, i| e }.map{ |e, i| i }.first
puts
p '----------------------------'


p '36.Дан целочисленный массив. Найти индекс первого максимального элемента.'   
p 'arr=[1,52,-6,49,-99,52]'
arr=[1,52,-6,49,-99,52]
print arr.map.with_index{ |e, i| [e, i] }.sort_by{ |e, i| -e }.map{ |e, i| i }.first
puts
p '----------------------------'


p '37.Дан целочисленный массив. Найти индекс последнего минимального элемента.' 
p 'arr=[1,52,-6,49,-99,-99]'
arr=[1,52,-6,49,-99,-99]
print arr.map.with_index{ |e, i| [e, i] }.sort_by{ |e, i| -e }.map{ |e, i| i }.last
puts
p '----------------------------'

p '38.Дан целочисленный массив. Найти индекс последнего максимального элемента. '
p 'arr=[1,99,-6,49,99,1]'
arr=[1,99,-6,49,99,1]
print arr.map.with_index{ |e, i| [e, i] }.sort_by{ |e, i| e }.map{ |e, i| i }.last
puts
p '----------------------------'


p '39.Дан целочисленный массив. Найти количество минимальных элементов.'
p 'arr = [1, 2, 3, 1, 1, 6, 7, 8]'
arr = [1, 2, 3, 1, 1, 6, 7, 8]
p arr.select{ |i| arr.min==i }.size
p '----------------------------'

p '40.Дан целочисленный массив. Найти количество максимальных элементов.'
p 'arr = [8, 8, 3, 8, 6, 6, 7, 8]'
arr = [8, 8, 3, 8, 6, 6, 7, 8]
p arr.select{ |i| arr.max==i }.size
p '----------------------------'


Дан целочисленный массив. Найти минимальный четный элемент.																									
Дан целочисленный массив. Найти минимальный нечетный элемент.																									
Дан целочисленный массив. Найти максимальный четный элемент.																									
Дан целочисленный массив. Найти максимальный нечетный элемент.																									
Дан целочисленный массив. Найти минимальный положительный элемент.																									
Дан целочисленный массив. Найти максимальный отрицательный элемент.																									
Дан целочисленный массив и интервал a..b. Найти минимальный из элементов в этом интервале.																									
Дан целочисленный массив и интервал a..b. Найти максимальный из элементов в этом интервале.																									
Дан целочисленный массив. Найти количество элементов, расположенных перед первым минимальным.																									
Дан целочисленный массив. Найти количество элементов, расположенных перед первым максимальным.	
