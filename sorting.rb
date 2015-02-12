def bubble_sort(array)
  n = array.length
  p "hey n = #{n}"
  loop do
    swapped = false

    (n-1).times do |i|
      p "hey i is changing... it is: #{i}"
      p "swapped is: #{swapped}"
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i]
        swapped = true
      end
    end
    break if not swapped
  end
  array
end

p bubble_sort([1,99,20,13,4,566,11])