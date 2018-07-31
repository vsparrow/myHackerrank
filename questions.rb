# s t 7 11
# a b 5 15
# m n 3 2
# m space-separated integers denoting the respective distances
#   that each apple falls from point a
# -2 2 1
# n space-separated integers denoting the respective distances
#   that each orange falls from point b
# 5 -6
# s  Starting point of Sam's house location.
# t  Ending location of Sam's house location.
# a  Location of the Apple tree.
# b  Location of the Orange tree.
# m  Number of apples that fell from the tree.
# apples  Distance at which each apple falls from the tree.
# n  Number of oranges that fell from the tree.
# oranges  Distance at which each orange falls from the tree.


# output
#
# The first integer: the number of apples that fall on Sam's house.
# The second integer: the number of oranges that fall on Sam's house.
def countApplesAndOranges(s, t, a, b, apples, oranges)
  # puts "a b :#{[a,b]}"
  apples_sams_house = 0
  oranges_sams_house = 0
  apples.each do |apple|
    # puts "aplusapple: #{a+apple}"
    if a+apple >= s && a+apple <= t
      apples_sams_house +=1
    end
  end #apples each
  oranges.each do |orange|
    # puts "bplusorange: #{b+orange}"
    if b+orange >= s && b+orange <= t
      oranges_sams_house +=1
    end
  end #apples each
  puts apples_sams_house
  puts oranges_sams_house
  # "end"
end

puts countApplesAndOranges(7, 11, 5, 15, [-2,2,1],[5, -6])




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
