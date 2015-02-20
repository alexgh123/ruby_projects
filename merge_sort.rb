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

def merge(xs, ys)
  return ys if xs.empty?
  return xs if ys.empty?
  xs[0] < ys[0] ? [xs[0]] + merge(xs[1..-1],ys) : [ys[0]] + merge(xs,ys[1..-1])
end

def merge_sort(xs)
  return xs if xs.size < 2
  n = xs.size / 2
  merge(merge_sort(xs[0...n]), merge_sort(xs[n..-1]))
end



p merge_sort([1,2,3,4,5])
p merge_sort([5,4,3,2,1])
p merge_sort([1,2,1])
p merge_sort([5,4,5])
p '-----'
# merge_sort([5])