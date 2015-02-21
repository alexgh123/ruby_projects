# input: unsorted array
# output: sorted array



  #for each element of the array,
  #if the first element is smaller than the next element, do nothing
  #if the first element is the same, do nothing
  # if the first element is bigger, swith the two elements
  # repeat the process with the next two

  #i think there is an edge case here depending on which side you start

  #so base case is:

  # if array.length = 1
  #   return 'sorted! + #array'
  # else
  #   if array[0] > array[1]

  # if first_half[0] == second_half[0]
    #   output_array << first_half.shift
    # elsif first_half[0] > second_half[0]
    #   output_array << second_half.shift
    # else first_half[0] < second_half[0]
    #   output_array << first_half.shift
    # end

def merge_sort(array)
  return array if array.size < 2
  midpoint = array.size / 2
  first_array = merge_sort(array[0...midpoint])
  second_array = merge_sort(array[midpoint..-1])
  merge(first_array, second_array)
end

def merge(first_array, second_array)
  return second_array if first_array.empty?
  return first_array if second_array.empty?

  if first_array[0] < second_array[0]
    [first_array[0]] + merge(first_array[1..-1],second_array)
  else
    [second_array[0]] + merge(first_array,second_array[1..-1])
  end
end





# p merge_sort([1,2,3,4,5])
p merge_sort([5,43,3,22,1])
p merge_sort([1,2,1])
p merge_sort([5,4,5])
p '-----'
p merge_sort([5])