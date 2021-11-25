
В том же репозитории, что и в первой домашке (RubyHW) создать папку HW2
Первое задание поместить в файл task1.rb. Первой строкой должно идти присвоение массива выше к переменной array. Каждая новая операция с новой строки. Опционально попробуйте сделать все задачки в одну строку.
  

array=[621, 445, 147, 159, 430, 222, 482, 44, 194, 522, 652, 494, 14, 126, 532, 387, 441, 471, 337, 446, 18, 36, 202, 574, 556, 458, 16, 139, 222, 220, 107, 82, 264, 366, 501, 319, 314, 430, 55, 336]

p 'узнать количество элементов в массиве'
array_tmp=array
p array_tmp.count

p' перевернуть массив'
array_tmp=array
p array_tmp.reverse

p 'найти наибольшее число'
array_tmp=array
p array_tmp.max

p 'найти наименьшее число'
array_tmp=array
p array_tmp.min

p 'отсортировать от меньшего к большему'
array_tmp=array
p array_tmp.sort

p 'отсортировать от большего к меньшему'
array_tmp=array
p array_tmp.sort { |a, b| b <=> a }

p 'удалить все нечетные числа;'
array_tmp=array
p array_tmp.delete_if {|el| el.odd?}

p 'оставить только те числа, которые без остатка делятся на 3;'
array_tmp=array
p array_tmp.select { |el| el % 3 == 0 }

 p 'удалить из массива числа, которые повторяются (то есть, нужно вывести массив, в котором нет повторов);'
array_tmp=array
p array_tmp.uniq 

p 'разделить каждый элемент на 10, в результате элементы не должны быть округлены до целого;'
array_tmp=array
 p array_tmp.map { |el| el.to_f / 10 }

p 'получить новый массив, который бы содержал в себе те буквы английского алфавита, порядковый номер которых есть в нашем массиве;'
array_tmp=array
p array_tmp.map { |el| ((el+9).to_s(36)).length<2 ? (el+9).to_s(36) : nil }.compact

p 'поменять местами минимальный и максимальный элементы массива;'
array_tmp=array
index_min_el = array_tmp.each_with_index.min[1]
index_max_el = array_tmp.each_with_index.max[1]
array_tmp[index_min_el],array_tmp[index_max_el]=array_tmp[index_max_el],array_tmp[index_min_el]
p array_tmp

p 'найти элементы, которые находятся перед минимальным числом в массиве;'
array_tmp=array
p array_tmp[0...array_tmp.index(array_tmp.min)]

p 'необходимо найти три наименьших элемента.'
array_tmp=array
p array_tmp.min(3)
