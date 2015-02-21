# input: unsorted array
# output: sorted array

def merge_sort(array)
  p "1. step one, begin method array.size is: #{array.size}"
  return array if array.size < 2
  p '2. just tried to return the array if the size is less than 2'
  midpoint = array.size / 2
  p '3. just defined midpoint'
  first_array = merge_sort(array[0...midpoint])
  p '4. just defined first array'
  second_array = merge_sort(array[midpoint..-1])
  p '5. just defined second array'
  p '6. about to make merge call...'
  merge(first_array, second_array)

end

def merge(first_array, second_array)
  return second_array if first_array.empty?
  return first_array if second_array.empty?
  p 'as we enter merge land arrays are:'
  p first_array
  p second_array
  if first_array[0] < second_array[0]
    [first_array[0]] + merge(first_array[1..-1],second_array)
  else
    [second_array[0]] + merge(first_array,second_array[1..-1])
  end
end

# p merge_sort([1,2,3,4,5])
p merge_sort([99,0,5,43,3,0,22,1])
