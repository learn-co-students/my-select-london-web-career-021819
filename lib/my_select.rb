def my_select(array)
  i=0 
  new_array = []
  while i < array.length 
    if yield(array[i])
      new_array << array[i]
    end
    i += 1
  end
  puts new_array.inspect
  new_array
end

array = [1, 2, 3, 4, 5]
#array.select do |x|
#  x.even?
#end

my_select(array){|x| x.even?}
# => [2, 4]
