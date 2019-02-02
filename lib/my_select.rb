
def my_select(collection)
 if collection.empty?
   return nil
 end

 i = 0
 array = []

 while i < collection.length
   test = yield collection[i]
   if (test)
    array << collection[i]
   end
    i += 1
 end
 array
end
