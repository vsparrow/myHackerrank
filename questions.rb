n = 6
k = 3
ar = [1, 3, 2, 6, 1, 2]

def divisibleSumPairs(n, k, ar)
  # "test"
  #n is just array.size
  #k is the number to mod with
  # num1 < num2
  count_of_pairs = 0
  array_size = ar.size
  counter = 0
  while counter < array_size
    i = ar[0]
    ar.shift
    ar.each do |element|
      # puts "#{i} and #{element}"
      # if i < element
        # puts "#{i} + #{element} % #{k} = #{(i+element) % k}"
        if (i+element) % k === 0
          count_of_pairs +=1
        end
      # end #if
    end
    counter +=1
  end #while
  count_of_pairs
end

puts divisibleSumPairs(n,k,ar)


# Complete the breakingRecords function in the editor below. It must return an integer array containing the numbers of times she broke her records. Index
#
# array = [10, 5, 20, 20, 4, 5, 2, 25, 1]
# def breakingRecords(scores)
#   high = 0
#   low = 0
#    # scores
#   highcounter = 0
#   lowcounter = 0
#
#    scores.each_with_index do |score,i|
#      # if score
#      if i === 0
#        # puts "first elements"
#        high = score
#        low = score
#      else
#        if score > high
#          high = score
#          highcounter+=1
#        elsif score < low
#          low = score
#          lowcounter +=1
#        end
#
#      end
#      # puts "score is #{score}, i is #{i}"
#    end
#    # [lowcounter, highcounter]
#    [highcounter,lowcounter]
# end
#
# puts "#{breakingRecords(array)} is return"
#
#
# # The elements of the first array are all factors of the integer being considered
# # The integer being considered is a factor of all elements of the second array
# a = [2, 4]
# b = [16, 32, 96]
# # a = [2]
# # b = [20, 30, 12]
# # a = [3,9,6]
# # b = [36, 72]
# # These numbers are referred to as being between the two arrays. You must determine how many such numbers exist.
#
# def getTotalX(a, b)
#   largest_of_a = a.max
#   smallest_of_b = b.min
#   count = largest_of_a
#   possible = []
#   # puts "largest_of_a is #{largest_of_a}"
#   # puts "smallest_of_b is #{smallest_of_b}"
#   while(count <= smallest_of_b)
#     # puts "count is #{count}"
#     if count % largest_of_a === 0
#       # puts " #{count} #{count % largest_of_a}"
#       # puts "got ot outter if"
#       if smallest_of_b % count === 0
#         # puts " #{count} #{count % smallest_of_b}"
#         # puts "got to inner if "
#         possible << count
#       end
#     end
#     count+=1
#   end
#   # puts "#{possible}"
#   is_not_factorial_of_all_b = []
#   possible.each do |p_item|
#     b.each do |b_item|
#       if b_item % p_item > 0
#         is_not_factorial_of_all_b << p_item
#       end #if
#     end
#   end
#   is_not_factorial_of_all_b = is_not_factorial_of_all_b.uniq
#   # puts "is_not_factorial_of_all_b : #{is_not_factorial_of_all_b}"
#   is_not_factorial_of_all_b.each do |not_factorial|
#     possible.delete(not_factorial)
#   end
#
#   doesnt_have_a_as_a_factor = []
#   # doesnt_have_a_as_a_factor
#   a.each do |a_item|
#     possible.each do |p_item|
#       if p_item % a_item > 0
#         doesnt_have_a_as_a_factor << p_item
#       end
#     end
#   end
#
#   doesnt_have_a_as_a_factor.each  { |d| possible.delete(d)}
#
#   puts "#{possible}"
#   possible.size
# end
#
# getTotalX(a,b)
#
#
# # x =  [73, 67, 38, 33]
#
# def gradingStudents(grades)
#   # "hi"
#   length = grades.length
#   for i in 0...length
#     # puts i
#     if grades[i] >= 38
#       remainder = grades[i] % 5
#       # puts remainder
#       if remainder === 3
#         grades[i] = grades[i]+2
#       elsif remainder === 4
#         grades[i] = grades[i]+1
#       end #remainder if
#     else
#       # puts grades[i]
#     end #if
#   end
#   grades
# end
#
# puts gradingStudents(x)


# def kangaroo(x1, v1, x2, v2)
#   same = "NO"
#
#   while x1 <=100000000 && x2 <= 100000000
#     x1 +=v1
#     x2 +=v2
#     if x1 === x2
#       same = "YES"
#       # puts "#{x1} #{x2}"
#     end
#
#   end
#   same
#   # puts "k1: #{k1_location} k2:#{k2_location}"
#   ####WORKS FOR 4 times
#   k1_location = x1
#   k2_location  = x2
#
#   4.times do
#     # puts "hello"
#     k1_location += v1
#     k2_location += v2
#     # puts "k1: #{k1_location} k2:#{k2_location}"
#   end
#
#   same = "NO"
#   if k1_location === k2_location
#     same = "YES"
#   end
#   puts same
#
# end
#
# puts kangaroo(0,3,4,2)
# puts kangaroo(0,2,5,3)
# puts kangaroo(4523, 8092, 9419, 8076)
# puts kangaroo(2081, 8403, 9107, 8400)
#

# # s t 7 11
# # a b 5 15
# # m n 3 2
# # m space-separated integers denoting the respective distances
# #   that each apple falls from point a
# # -2 2 1
# # n space-separated integers denoting the respective distances
# #   that each orange falls from point b
# # 5 -6
# # s  Starting point of Sam's house location.
# # t  Ending location of Sam's house location.
# # a  Location of the Apple tree.
# # b  Location of the Orange tree.
# # m  Number of apples that fell from the tree.
# # apples  Distance at which each apple falls from the tree.
# # n  Number of oranges that fell from the tree.
# # oranges  Distance at which each orange falls from the tree.
#
#
# # output
# #
# # The first integer: the number of apples that fall on Sam's house.
# # The second integer: the number of oranges that fall on Sam's house.
# def countApplesAndOranges(s, t, a, b, apples, oranges)
#   # puts "a b :#{[a,b]}"
#   apples_sams_house = 0
#   oranges_sams_house = 0
#   apples.each do |apple|
#     # puts "aplusapple: #{a+apple}"
#     if a+apple >= s && a+apple <= t
#       apples_sams_house +=1
#     end
#   end #apples each
#   oranges.each do |orange|
#     # puts "bplusorange: #{b+orange}"
#     if b+orange >= s && b+orange <= t
#       oranges_sams_house +=1
#     end
#   end #apples each
#   puts apples_sams_house
#   puts oranges_sams_house
#   # "end"
# end
#
# puts countApplesAndOranges(7, 11, 5, 15, [-2,2,1],[5, -6])
#
#


#
# # s = "07:05:45PM"
# # s = "12:05:45AM"
# # s = "01:33:33AM"
# # s = "01:33:33pm"
# # s = "12:33:33pm"
# # s = "12:33:33am"
# # s = "11:33:33am"
# s = "11:33:33pm"
# # s = "01:00:00am"
# def timeConversion(s)
#     #
#     # Write your code here.
#     #
#     split_time = s.split(":")
#     hour = split_time[0]
#     minute = split_time[1]
#     second = split_time[2][0] + split_time[2][1]
#     # second = second.join("")
#     daynight = split_time[2][2] + split_time[2][3]
#
#     if daynight === "PM" || daynight ==="pm"
#       if hour === "12"
#         hour = 12
#       else
#         hour = hour.to_i
#         hour += 12
#         # hour = hour
#       end
#     elsif daynight === "AM" || daynight === "am"
#       if hour === "12"
#         hour = "00"
#       end
#     end
#     # hour = hour.to_s
#     # news
#     # [hour, minute, second, daynight]
#     hour = hour.to_s
#     return "#{hour}:#{minute}:#{second}"
# end
# puts "#{timeConversion s}"


# a = [3, 2, 1, 3]
# def birthdayCakeCandles(ar)
#   max = 0
#   maxcount = 0
#   ar.each do |x|
#     if x === max
#       maxcount+=1
#     elsif x > max
#       max = x
#       maxcount = 1
#     end #if
#
#   end
#   # eturn the number of candles she can successfully blow out
#   # "test"
#   return maxcount
# end
#
# puts birthdayCakeCandles a
#
#
# # Given five positive integers, find the minimum and maximum
# # values that can be calculated by summing exactly four of the five
# #  integers.
# # a=[1, 2, 6, 4, 5]
# a = [5, 5, 5, 5, 5]
# def miniMaxSum(arr)
#   min = 0
#   max = 0
#   for i in 0..arr.length-1
#     temparr = arr[0..arr.length-1]
#     # return temparr
#     # return i
#     # temparr =
#     # temparr.delete(i)
#     # if i === 3
#       # return temparr
#       # temparr.delete(temparr[i])
#       # return temparr
#     # end
#     # temparr.delete(temparr[i]) #this does not work if a value is dupe
#     temparr.delete_at(i)
#     sum = 0
#     temparr.each {|x| sum +=x}
#     if i === 0
#       max = sum
#       min = sum
#     end
#
#     if sum > max
#       max = sum
#     end
#     if sum < min
#       min = sum
#     end
#   end #for
#   return [min, max]
#   # return "test"
# end
#
# puts "#{miniMaxSum(a)}"


# def staircase(n)
#   count = 0
#   limit = n
#   spaces = n-1
#   pound = 1
#   while count < limit
#     output = ""
#     for i in 0...spaces
#       output+=" "
#     end #spaces
#     for i in 0...pound
#       output += "#"
#     end #pound
#     count +=1
#     spaces -=1
#     pound +=1
#     puts output
#   end #while
# end
#
# staircase 6


# `a = [-4, 3, -9, 0, 4, 1]
# def plusMinus(arr)
#   zero = 0
#   pos = 0
#   neg = 0
#   arr.each do |x|
#     if x === 0
#       zero +=1
#     elsif x > 0
#       pos +=1
#     elsif  x < 0
#       neg +=1
#     end
#   end   #each
#
#   # arr
#   # [zero,pos,neg]
#   return [pos.to_f/arr.length, neg.to_f/arr.length, zero.to_f/arr.length]
#
# end
#
# puts "#{plusMinus(a)}"
#

#
# a = [[11, 2, 4], [4, 5, 6], [10, 8, -12]]
#
# def diagonalDifference(a)
#   counter = 0
#   lesscounter = a.length-1
#   topdown = 0
#   downtop = 0
#   while counter < a.length
#     topdown += a[counter][counter]
#     downtop += a[counter][lesscounter]
#     # puts "#{[a[counter], a[lesscounter]]}"
#     # puts "#{[a[counter][counter], a[counter][lesscounter]]}"
#     counter +=1
#     lesscounter -=1
#   end
#   puts (topdown-downtop).abs
#   # puts "#{[a.length, counter, lesscounter, topdown, downtop]}"
# end
#
# diagonalDifference(a)
