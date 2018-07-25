# Given five positive integers, find the minimum and maximum
# values that can be calculated by summing exactly four of the five
#  integers.
# a=[1, 2, 6, 4, 5]
a = [5, 5, 5, 5, 5]
def miniMaxSum(arr)
  min = 0
  max = 0
  for i in 0..arr.length-1
    temparr = arr[0..arr.length-1]
    # return temparr
    # return i
    # temparr =
    # temparr.delete(i)
    # if i === 3
      # return temparr
      # temparr.delete(temparr[i])
      # return temparr
    # end
    # temparr.delete(temparr[i]) #this does not work if a value is dupe
    temparr.delete_at(i)
    sum = 0
    temparr.each {|x| sum +=x}
    if i === 0
      max = sum
      min = sum
    end

    if sum > max
      max = sum
    end
    if sum < min
      min = sum
    end
  end #for
  return [min, max]
  # return "test"
end

puts "#{miniMaxSum(a)}"


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
