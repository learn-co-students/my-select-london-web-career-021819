def my_select(collection)
    i = 0
    new = []
    while i < collection.length
       if yield(collection[i]) == true
          new << collection[i]
       end
       i += 1
    end
    new
 end
