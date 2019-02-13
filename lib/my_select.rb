collection = [1,2,3,4,5]
def my_select(collection)
  if block_given?
    i =0
    new_array = [] #does not modify the original appropriately
    while i<collection.length
      #the block code returns elements that
      #are even as true , others as false
      if yield(collection[i]) == true
        #elements == true (even) we shovel
        new_array<< collection[i]
      #new_array.delete_if &:odd?
  end
  i+=1
    end
  new_array
else #related to if_block_given
  return
end
end

my_select(collection) do
  |element| element.even?
end
