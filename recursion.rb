#fibonacci
#input: number
#output: returns that many members of the fibonacci sequence

# input:   1   2   3   4   5   6    7    8    9   10   11    12

# output:  1_:_1_:_2_:_3_:_5_:_8_:_13_:_21_:_34_:_55_:_89_:_144,\


# def fib_iter(num)
#   array = [1,1]
#   if num == 1
#     array = array[0]
#   elsif num == 2
#     array
#   elsif num == 3
#     array << (array[-1] + array[-2])
#   elsif num == 4
#     array << (array[-1] + array[-2])
#     array << (array[-1] + array[-2])
#   elsif num == 5
#     array << (array[-1] + array[-2])
#     array << (array[-1] + array[-2])
#     array << (array[-1] + array[-2])
#   elsif num == 6
#     array << (array[-1] + array[-2])
#     array << (array[-1] + array[-2])
#     array << (array[-1] + array[-2])
#     array << (array[-1] + array[-2])
#   end
#   array
# end


#first working version, albeit ugly, i think i used a recursive call in an iterative solution
# def fib_recur(num)
#     array = [1,1]
#   if num == 1
#     array = array[0]
#   elsif num == 2
#     array
#   else
#     until num == 2 do
#     array << (array[-1] + array[-2])
#     num -= 1
#     fib_iter(num)
#     end
#   end
#   array
# end

def fib_iter(num)
  return [0] if num == 0
  nums = [0,1]
  (2..num).each { |num| nums << nums[num-2] + nums[num-1]}
  nums
end

def fib_recur(num)
  return [0] if num == 0
  return [0,1] if num == 1
  arr = fib_recur(num-1)
  arr << arr[-1]+arr[-2]
end

p "iterative: "
p "0: " + "#{fib_iter(0)}"
p "1: " + "#{fib_iter(1)}"
p "2: " + "#{fib_iter(2)}"
p "3: " + "#{fib_iter(3)}"
p "4: " + "#{fib_iter(4)}"
p "5: " + "#{fib_iter(5)}"
p "6: " + "#{fib_iter(6)}"


p "recursive: "
p "1: " + "#{fib_recur(1)}"
p "2: " + "#{fib_recur(2)}"
p "3: " + "#{fib_recur(3)}"
p "4: " + "#{fib_recur(4)}"
p "5: " + "#{fib_recur(5)}"
p "6: " + "#{fib_recur(6)}"