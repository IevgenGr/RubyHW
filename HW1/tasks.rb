p '1. Дан целочисленный массив. Необходимо вывести вначале его элементы с четными индексами, а затем - с нечетными.'
p 'arr=[1,5,6,45,23,2,47]'
arr=[1,5,6,45,23,2,47]

def Task_1 arr
  p arr.select.with_index { |a, index| index.odd? }.concat arr.select.with_index { |a, index| index.even? }
end


Task_1 (arr)
p '----------------------------'

p '2 Дан целочисленный массив. Необходимо вывести вначале его элементы с нечетными индексами, а затем - четными.'   
p 'arr=[1,5,6,45,23,2,47]'
arr=[1,5,6,45,23,2,47]

def Task_2  arr
  p arr.select.with_index { |a, index| index.even? }.concat arr.select.with_index { |a, index| index.odd? }
end


Task_2(arr)
p '----------------------------'


p '3.Дан целочисленный массив. Вывести номер первого из тех его элементов, которые удовлетворяют двойному неравенству: A[0] < A[i] < A[-1]. Если таких элементов нет, то вывести [ ].   '                                                                                               
p 'arr=[1,52,6,49,23,2,12]'
arr=[1,52,6,49,23,2,12]

def Task_3 arr
  p arr.index { |element| arr[0] < element && element < arr[-1] } || []
end

Task_3 arr
p '----------------------------'


p '4.Дан целочисленный массив. Вывести номер последнего из тех его элементов, которые удовлетворяют двойному неравенству: A[0] < A[i] < A[-1]. Если таких элементов нет, то вывести [ ].'                                                                                                   
p 'arr=[1,52,6,49,23,30,27]'
arr=[1,52,6,49,23,30,27]

def Task_4 arr
  p arr.index { |element| arr[0] < element && element < arr[-1] } || []
end

Task_4 arr
p '----------------------------'

p '5.Дан целочисленный массив. Преобразовать его, прибавив к четным числам первый элемент. Первый и последний элементы массива не изменять.'
p 'arr=[2,52,6,49,23,28,28]'
arr=[2,52,6,49,23,28,28]

def Task_5 arr
  p arr.map.with_index { |e, i|  e.even? && (i != 0 && i != (arr.count-1)) ? e + arr.first : e }
end

Task_5 arr
p '----------------------------'


p '6.Дан целочисленный массив. Преобразовать его, прибавив к четным числам последний элемент. Первый и последний элементы массива не изменять.'
p 'arr=[1,52,6,49,23,30,28]'
arr=[1,52,6,49,23,30,28]


def Task_5 arr
 p arr.map.with_index { |e, i|  e.even? && (i != 0 && i != (arr.count-1)) ? e + arr.last : e }
end

Task_5 arr

p '----------------------------'
  

p '7.Дан целочисленный массив. Преобразовать его, прибавив к нечетным числам последний элемент. Первый и последний элементы массива не изменять.'
p 'arr=[1,52,6,49,23,30,28]'
arr=[1,52,6,49,23,30,28]

def Task_7 arr
  p arr.map.with_index { |e, i|  e.odd? && (i != 0 && i != (arr.count-1)) ? e + arr.last : e }
end

Task_7 arr
p '----------------------------'


p '8.Дан целочисленный массив. Преобразовать его, прибавив к нечетным числам первый элемент. Первый и последний элементы массива не изменять.'
p 'arr=[1,52,6,49,23,30,27]'
arr=[1,52,6,49,23,30,27]

def Task_8 arr
  p arr.map.with_index { |e, i|  e.odd? && (i != 0 && i != (arr.count-1)) ? e + arr.first : e }
end

Task_8 arr
p '----------------------------'


p '9.Дан целочисленный массив. Заменить все положительные элементы на значение минимального.'       
p 'arr=[1,52,-6,49,-23,30,27]'
arr=[1,52,-6,49,-23,30,27]

def Task_9 arr
  p arr.map { |e|  e.positive? ?  arr.min : e }
end

Task_9 arr
p '----------------------------'


p '10.Дан целочисленный массив. Заменить все положительные элементы на значение максимального.'
p 'arr=[1,52,-6,49,-23,30,27]'
arr=[1,52,-6,49,-23,30,27]

def Task_10 arr
  p arr.map { |e|  e.positive? ?  arr.max : e }
end

Task_10 arr

p '----------------------------'


p '11.Дан целочисленный массив. Заменить все отрицательные элементы на значение минимального.'  
p 'arr=[1,52,-6,49,-23,30,27]'
arr=[1,52,-6,49,-23,30,27]

def Task_11 arr
  p arr.map { |e|  e.negative? ?  arr.min : e }
end

Task_11 arr

p '----------------------------'


p '12.Дан целочисленный массив. Заменить все отрицательные элементы на значение максимального.  '
p 'arr=[1,52,-6,49,-23,30,27]'
arr=[1,52,-6,49,-23,30,27]

def Task_12 arr
  p arr.map { |e|  e.negative? ?  arr.max : e }
end

Task_12 arr
p '----------------------------'


p '13.Дан целочисленный массив. Осуществить циклический сдвиг элементов массива влево на одну позицию.' 
p 'arr=[1,52,-6,49,-23,30,27]'
arr=[1,52,-6,49,-23,30,27]

def Task_13 arr
  p arr.rotate
end 

Task_13 arr

p '----------------------------'


p '14.Дан целочисленный массив. Осуществить циклический сдвиг элементов массива вправо на одну позицию.'
p 'arr=[1,52,-6,49,-23,30,27]'
arr=[1,52,-6,49,-23,30,27]

def Task_14 arr
  p arr.rotate(-1)
end

Task_14 arr

p '----------------------------'


p '15.Дан целочисленный массив. Проверить, образуют ли элементы арифметическую прогрессию. Если да, то вывести разность прогрессии, если нет - вывести nil.'
p 'arr=[1,4,7,10,13,16,19]'
arr=[1,4,7,10,13,16,19]

def Task_15 arr
  diffProgression=arr[1] - arr[0]
  (arr.length - 1).times do | i | 
    if ((arr[i + 1] - arr[i]) != diffProgression)
      diffProgression = nil  
      break
    end
  end
  puts diffProgression
end

Task_15 arr
p '----------------------------'


p '16. Дан целочисленный массив. Проверить, образуют ли элементы геометрическую прогрессию. Если да, то вывести знаменатель прогрессии, если нет - вывести nil.'
p 'arr=[1,3,9,27,81,243,729]'
arr=[1,3,9,27,81,243,729]

def Task_16 arr
  znamenatelProgresii = arr[1] / arr[0]
  (arr.length - 1).times do | i | 
    if ((arr[i + 1] / arr[i]) != znamenatelProgresii)
      znamenatelProgresii = nil  
      break
    end
  end
  puts znamenatelProgresii
end

Task_16 arr
p '----------------------------'


p '17.Дан целочисленный массив. Найти количество его локальных максимумов.  '
p 'arr=[1,11,12,27,81,3,729,576]'
arr=[1,11,12,27,81,3,729,576]

def Task_17 arr
  countLocalMax = 0
  (arr.length - 2).times do | i | 
    if ((arr[i + 1]>arr[i])&&(arr[i+  1]>arr[i + 2]))
      countLocalMax += 1  
    end
  end
  puts countLocalMax
end

 Task_17 arr
p '----------------------------'


p '18.Дан целочисленный массив. Найти количество его локальных минимумов.   '
p 'arr=[1,11,4,27,81,3,729,576]'
arr=[1,11,4,27,81,3,729,576]

def Task_18 arr
  countLocalMin = 0
  (arr.length - 2).times do | i | 
    if ((arr[i + 1] < arr[i]) && (arr[i + 1]<arr[i + 2]))
      countLocalMin += 1  
    end
  end
  puts countLocalMin
end

Task_18 arr
p '----------------------------'


p '19.Дан целочисленный массив. Найти максимальный из его локальных максимумов.'
p 'arr=[1,11,14,13,81,564,3,576]'
arr=[1,11,14,13,81,564,3,576]

def Task_19 arr
  arrMax=Array.new
  (arr.length - 2).times do | i | 
    if ((arr[i + 1] > arr[i]) && (arr[i + 1] > arr[i + 2]))
      arrMax.push(arr[i + 1])  
    end
  end
  puts arrMax.max
end

Task_19 arr
p '----------------------------'


p '20.Дан целочисленный массив. Найти минимальный из его локальных минимумов.       '
p 'arr=[1,11,14,13,81,564,729,576]'
arr=[1,11,14,13,81,564,729,576]

def Task_20 arr
  arrMin = Array.new
  (arr.length - 2).times do | i | 
    if ((arr[i + 1] < arr[i]) && (arr[i + 1] < arr[i + 2]))
      arrMin.push(arr[i + 1])  
    end
  end
  p arrMin.min
end

Task_20 arr
p '----------------------------'
  

p '21.Дано вещественное число R и массив вещественных чисел. Найти элемент массива, который наиболее близок к данному числу.    '
p 'arr=[1.0,4.0,7.0,10.0,13.5,16.0,4.0], R=45'
arr=[1.0,4.0,7.0,10.0,13.5,16.0,4.0]
r=45.0

def Task_21 (arr,r)
  nearestValue = arr[0]
  diff = (arr[0] - r).abs
  arr.length.times do | i | 
    if diff > (arr[i] - r).abs
      diff = (arr[i] - r).abs
      nearestValue = arr[i]
    end
  end
  puts nearestValue
end

Task_21(arr,r)
p '----------------------------'


p '22.Дано вещественное число R и массив вещественных чисел. Найти элемент массива, который наименее близок к данному числу.'
p 'arr=[1.0,4.0,7.0,10.0,13.5,16.0,4.0], R=45'
arr=[1.0,4.0,7.0,10.0,13.5,16.0,4.0]
r=45.0

def Task_22 (arr,r)
  nearestValue = arr[0]
  diff = (arr[0] - r).abs
  arr.length.times do | i | 
    if diff < (arr[i] - r).abs
       diff = (arr[i] - r).abs
       nearestValue = arr[i]
    end
  end
  p nearestValue
end

Task_22(arr,r)
p '----------------------------'


p ' 23.Дан целочисленный массив. Преобразовать его, вставив перед каждым положительным элементом нулевой элемент.   '
p 'arr=[1,52,-6,49,99,27]'
arr=[1,52,-6,49,99,27]

def Task_23 (arr)
  count_shift = 0
  arr_1 = arr.map{ |elem| elem = elem }
  arr_2 = arr.map{ |elem| elem = elem }
  arr_1.length.times do | i | 
    if (arr_1[i] > 0)
      arr_2.insert((i + count_shift), 0) 
      count_shift += 1 
     end
    end
  p arr_2
  p
end

Task_23 (arr)
p '----------------------------'


p '24.Дан целочисленный массив. Преобразовать его, вставив перед каждым отрицательным элементом нулевой элемент.   '' '
p 'arr=[1,52,-6,49,-99,27]'
arr=[1,52,-6,49,-99,27]

def Task_24(arr)
 count_shift = 0
   arr_1 = arr.map{ |elem| elem = elem }
   arr_2 = arr.map{ |elem| elem = elem }
   arr_1.length.times do | i | 
      if (arr_1[i] < 0)
         arr_2.insert((i + count_shift), 0) 
         count_shift += 1 
      end
     end
  p arr_2
  end

Task_24 (arr)
p '----------------------------'


p '25.Дан целочисленный массив. Преобразовать его, вставив после каждого положительного элемента нулевой элемент.'  
p 'arr=[1,52,-6,49,99,27]'
arr=[1,52,-6,49,99,27]

def Task_25 (arr)
  count_shift = 1
  arr_1 = arr.map{ |elem| elem = elem }
  arr_2 = arr.map{ |elem| elem = elem }
    arr_1.length.times do | i | 
      if (arr_1[i] > 0)
        arr_2.insert((i + count_shift), 0) 
        count_shift += 1 
      end
    end
  p arr_2
 end

Task_25 (arr)
p '----------------------------'


p '26.Дан целочисленный массив. Преобразовать его, вставив после каждого отрицательного элемента нулевой элемент.    '
p 'arr=[1,52,-6,49,-99,27]'
arr=[1,52,-6,49,-99,27]

def Task_26(arr)
  count_shift = 1
  arr_1=arr.map{ |elem| elem = elem }
  arr_2=arr.map{ |elem| elem = elem }
    arr_1.length.times do | i | 
      if (arr_1[i] < 0)
        arr_2.insert((i + count_shift), 0) 
        count_shift += 1 
      end
    end
  p arr_2
 end

Task_26 (arr)
p '----------------------------'


p '27.Дан целочисленный массив. Упорядочить его по возрастанию. '   
p 'arr=[1,52,-6,49,-99,27]'
arr=[1,52,-6,49,-99,27]

def Task_27(arr)
  p arr.sort
end

Task_27(arr)

p '----------------------------'


p '28.Дан целочисленный массив. Упорядочить его по убыванию.    '
p 'arr=[1,52,-6,49,-99,27]'
arr=[1,52,-6,49,-99,27]

def Task_28(arr)
  p arr.sort.reverse
end

Task_28(arr)

p '----------------------------'


p '29.Дан целочисленный массив. Вывести индексы массива в том порядке, в котором соответствующие им элементы образуют убывающую последовательность. '
p 'arr=[1,52,-6,49,-99,27]'
arr=[1,52,-6,49,-99,27]

def Task_29(arr)
  p arr.map.with_index{ |e, i| [e, i] }.sort_by{ |e, i| -e }.map{ |e, i| i }
end

Task_29(arr)

p '----------------------------'


p '30.Дан целочисленный массив. Вывести индексы массива в том порядке, в котором соответствующие им элементы образуют возрастающую последовательность.'
p 'arr=[1,52,-6,49,-99,27]'
arr=[1,52,-6,49,-99,27]

def Task_30(arr)
  p arr.map.with_index{ |e, i| [e, i] }.sort_by{ |e, i| e }.map{ |e, i| i }
end

Task_30(arr)

p '----------------------------'


p '31.Дан целочисленный массив. Найти индекс минимального элемента. '
p 'arr=[1,52,-6,49,-99,27]'
arr=[1,52,-6,49,-99,27]

def Task_31 (arr)
  puts arr.index(arr.min)
end

Task_31 (arr)
p '----------------------------'


p '32.Дан целочисленный массив. Найти индекс максимального элемента.'
p 'arr=[1,52,-6,49,-99,27]'
arr=[1,52,-6,49,-99,27]

def Task_32 (arr)
  puts arr.index(arr.max)
end

Task_32 (arr)
p '----------------------------'


p '33.Дан целочисленный массив. Найти индекс первого минимального элемента. '
p 'arr=[1,52,-6,49,-99,27]'
arr=[1,52,-6,49,-99,27]

def Task_33 (arr)
  p arr.map.with_index{ |e, i| [e, i] }.sort_by{ |e, i| e }.map{ |e, i| i }.first
end

Task_33 (arr)

p '----------------------------'


p '34.Дан целочисленный массив. Найти индекс первого максимального элемента.'   
p 'arr=[1,52,-6,49,-99,52]'
arr=[1,52,-6,49,-99,52]

def Task_34 (arr)
  p arr.map.with_index{ |e, i| [e, i] }.sort_by{ |e, i| - e }.map{ |e, i| i }.first
end

Task_34 (arr)

p '----------------------------'


p '35.Дан целочисленный массив. Найти индекс последнего минимального элемента.' 
p 'arr=[1,52,-6,49,-99,-99]'
arr=[1,52,-6,49,-99,-99]

def Task_35 (arr)
  p arr.map.with_index{ |e, i| [e, i] }.sort_by{ |e, i| - e }.map{ |e, i| i }.last
end

Task_35 (arr)

p '----------------------------'


p '36.Дан целочисленный массив. Найти индекс последнего максимального элемента. '
p 'arr=[1,99,-6,49,99,1]'
arr=[1,99,-6,49,99,1]

def Task_36 (arr)
  p arr.map.with_index{ |e, i| [e, i] }.sort_by{ |e, i| e }.map{ |e, i| i }.last
end

Task_36 (arr)

p '----------------------------'


p '37.Дан целочисленный массив. Найти количество минимальных элементов.'
p 'arr = [1, 2, 3, 1, 1, 6, 7, 8]'
arr = [1, 2, 3, 1, 1, 6, 7, 8]

def Task_37 (arr)
  p arr.select{ |i| arr.min == i }.size
end

Task_37 (arr)
p '----------------------------'


p '38.Дан целочисленный массив. Найти количество максимальных элементов.'
p 'arr = [8, 8, 3, 8, 6, 6, 7, 8]'
arr = [8, 8, 3, 8, 6, 6, 7, 8]

def Task_38 (arr)
  p arr.select{ |i| arr.max == i }.size
end

Task_38 (arr)
p '----------------------------'


p '39.Дан целочисленный массив. Найти минимальный четный элемент.   '
p ' arr = [21, 2, 3, 14, 61, 5, 74, 9]'
arr = [21, 2, 3, 14, 61, 5, 74, 9]

def Task_39 (arr)
  p arr.select{ |el| el.even? }.min
end

Task_39 (arr)
p '----------------------------'


p '40 Дан целочисленный массив. Найти минимальный нечетный элемент. '   
p ' arr = [21, 2, 3, 14, 61, 5, 74, 9]'
arr = [21, 2, 3, 14, 61, 5, 74, 9]

def Task_40 (arr)
  p arr.select{ |el| el.odd? }.min
end

Task_40 (arr)  
p '----------------------------'


p '41.Дан целочисленный массив. Найти максимальный четный элемент.'
p ' arr = [21, 2, 3, 14, 61, 5, 74, 9]'
arr = [21, 2, 3, 14, 61, 5, 74, 9]

def Task_41 (arr)
  p arr.select{ |el| el.even? }.max
end

Task_41 (arr)  
p '----------------------------'


p '42.Дан целочисленный массив. Найти максимальный нечетный элемент.'
p ' arr = [21, 2, 3, 14, 61, 5, 74, 9]'
arr = [21, 2, 3, 14, 61, 5, 74, 9]

def Task_42 (arr) 
  p arr.select{ |el| el.odd? }.max
end

Task_42 (arr)  
p '----------------------------'


p '43.Дан целочисленный массив. Найти минимальный положительный элемент.    '
p ' [21, -2, 3, -14, 61, 5, 74, 9]'
arr = [21, -2, 3, -14, 61, 5, 74, 9]

def Task_43 (arr)  
  p arr.select{ |el| el > 0}.min
end

Task_43 (arr)    
p '----------------------------'


p '44.Дан целочисленный массив. Найти максимальный отрицательный элемент.   '
p ' [21, -2, 3, -14, 61, 5, 74, 9]'
arr = [21, -2, 3, -14, 61, 5, 74, 9]

def Task_44 (arr) 
  p arr.select{ |el| el < 0}.max
end

Task_44 (arr)  
p '----------------------------'


p '45.Дан целочисленный массив. Найти количество элементов, расположенных перед первым минимальным.'
p 'arr=[1,52,-6,49,-99,-99]'
arr=[4,52,-6,1,-99,-99]

def Task_45 (arr)
  p arr.map.with_index{ |e, i| [e, i] }.sort_by{ |e, i| e }.map{ |e, i| i }.first
end

Task_45 (arr) 

p '----------------------------'


p '46.Дан целочисленный массив. Найти количество элементов, расположенных перед первым максимальным.'
p 'arr=[1,52,-6,49,99,99]'
arr=[4,52,-6,1,99,99]

def Task_46 (arr)
  p arr.map.with_index{ |e, i| [e, i] }.sort_by{ |e, i| - e }.map{ |e, i| i }.first
end

Task_46 (arr)
  
p '----------------------------'


p '47.Дан целочисленный массив. Найти количество элементов, расположенных после первого максимального.'
p 'arr=[1,99,-6,49,99,99]'
arr=[4,99,-6,1,99,99]

def Task_47 (arr)
  p arr.length-arr.map.with_index{ |e, i| [e, i] }.sort_by{ |e, i| - e }.map{ |e, i| i }.first - 1
end

Task_47 (arr)

p '----------------------------'


p '48.Дан целочисленный массив. Найти количество элементов, расположенных после первого минимального .'
p 'arr=[4,-99,-6,1,-99,99]'
arr=[4,-99,-6,1,-99,99]

def Task_48 (arr)
  p arr.length-arr.map.with_index{ |e, i| [e, i] }.sort_by{ |e, i| e }.map{ |e, i| i }.first - 1
end

Task_48 (arr) 

p '----------------------------'


p '49 Дан целочисленный массив. Найти количество элементов, расположенных перед последним максимальным. '
p 'arr=[4,52,-6,99,99,4]'
arr=[4,52,-6,99,99,4]

def Task_49 (arr)
  p  arr.map.with_index{ |e, i| [e, i] }.sort_by{ |e, i| e }.map{ |e, i| i }.last
end

Task_49 (arr) 

p '----------------------------'


p '50 Дан целочисленный массив. Найти количество элементов, расположенных перед последним минимальным.'
p 'arr=[4,52,-6,-99,-99,4]'
arr=[4,52,-6,-99,-99,4]

def Task_50 (arr)
  p  arr.map.with_index{ |e, i| [e, i] }.sort_by{ |e, i| - e }.map{ |e, i| i }.last
end
Task_50 (arr) 

p '----------------------------'
