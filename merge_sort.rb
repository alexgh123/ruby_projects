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


def merge_sort(array)

#what is my loop doing?
#unitl my array.length == ??
  n = array.length
  if n > 1
  first_half = array[0..(n/2)]
  second_half = array[(1+(n/2))..n]

  merge_sort(first_half)
  merge_sort(second_half)

 #prob end loop?
  else
    p 'array not longer than 1 element'
  end

end

#if array 1 has smallest element, put that in new array
# if array 2 has smallest element, put that in new array

merge_sort([1,2,3,4,5])
merge_sort([5,4,3,2,1])
merge_sort([1,2,1])
merge_sort([5,4,5])