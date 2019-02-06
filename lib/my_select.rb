def my_select(array)
  if block_given?
    array2 = []
    i = 0 
    while i < array.length 
    if yield(array[i]) == true 
      array2 << array[i]
    end 
    i+=1 
  end
  array2
  else 
    return "Hey! No block was given!"
    end
end