
# function QuestionsMarks(str) take the str string parameter, which will contain
# single digit numbers, letters, and question marks, and
# check if there are exactly 3 question marks between every pair of two numbers that add up to 10.
#  If so, then your program should return the string true,
#  otherwise it should return the string false.
#  If there aren't any two numbers that add up to 10 in the string,
#  then your program should return false as well.
#
# For example: if str is "arrb6???4xxbl5???eee5" then your program should return true
# because there are exactly 3 question marks between 6 and 4,
# and 3 question marks between 5 and 5 at the end of the string.
# Sample Test Cases
#

def questionMarks(str)
  puts str
  passes = false
  # get location of numbers
  locationOfNums = []
  for i in 0...str.length
    locationOfNums.push(i) if str[i].ord >= 48 && str[i].ord <=57
  end
  puts "#{locationOfNums}"

  #test to see if numbers add up to 10
  somePairEquals10 = false
  pairOf10s = []
  for i in 0...locationOfNums.length-1
    puts "#{str[locationOfNums[i]].to_i} + #{str[locationOfNums[i+1]].to_i} is #{str[locationOfNums[i]].to_i + str[locationOfNums[i+1]].to_i}"

    if str[locationOfNums[i]].to_i + str[locationOfNums[i+1]].to_i == 10
      somePairEquals10 = true
      pairOf10s.push([locationOfNums[i].to_i, locationOfNums[i+1].to_i])
    end #if
  end #for
  puts "somePairEquals10: #{somePairEquals10}"
  puts "pairOf10s #{pairOf10s}"

  #see if exactly 3 questionMarks betweek pairs
  if pairOf10s.length == 0
    puts "NO PAIRS : #{pairOf10s}"
    return false
  end
  pairOf10s.each do |pair|
    # puts "here is #{pair}"
    countOfQuestion = 0
    for i in pair[0]...pair[1]
      # puts str[i]
      countOfQuestion +=1 if str[i] == '?'
    end #for
    puts "countOfQuestion is #{countOfQuestion}"
    return false if countOfQuestion != 3  #a pair of 10s did not have 3 question marks
  end #each
  return true #nothing to say false
  # puts passes #ths was taken care of by "no pairs "
end

puts questionMarks "aa6?9"
# Input:"aa6?9"
# Output:"false"
#
puts "*********************"
puts questionMarks "acc?7??sss?3rr1??????5"
puts questionMarks "8?a?2acc?7??sss?3rr1??????5"
# Input:"acc?7??sss?3rr1??????5"
# Output:"true"
#


# def alphabetSoup(str)
#   puts str
#   str = str.split("")
#   counter = 0
#   anyChanges = false
#   while(true)
#     anyChanges = false
#     for i in 0...str.length-1
#       if str[i] > str[i+1]
#         temp = str[i+1]
#         str[i+1] = str[i]
#         str[i] = temp
#         anyChanges = true
#       end #if
#     end #for
#
#     break if anyChanges == false
#     counter +=1
#     break if counter == 1000
#   end
#   # puts counter
#   puts str.join("")
# end
#
# # function AlphabetSoup(str) take the str string parameter being passed and
# # return the string with the letters in alphabetical order (ie. hello becomes ehllo).
# # Assume numbers and punctuation symbols will not be included in the string.
# # Sample Test Cases
# #
# alphabetSoup "coderbyte"
# # Input:"coderbyte"
# # Output:"bcdeeorty"
# #
# alphabetSoup "hooplah"
# # Input:"hooplah"
# # Output:"ahhloop"



# def letterChanges(input)
#   puts input
#   input = input.split("")
#   for i in 0...input.length
#     num = input[i].ord
#     # newChar = ''
#     if num == 122
#       # newChar = 'a'
#       input[i] = 'A'
#     elsif num >= 97 && num<=121
#       # newChar = (num+1).chr
#       input[i] = (num+1).chr
#     end #if
#
#     if (input[i]=="e" || input[i]=="i" || input[i]=="o"|| input[i]=="u") # 'a' taken care of
#       input[i] = (num-31).chr
#     end
#   end #for
#   puts input.join("")
# end
# # Using the Ruby language, have the function LetterChanges(str) take the str parameter being passed and
# # modify it using the following algorithm.
# # Replace every letter in the string with the letter following it in the alphabet (ie. c becomes d, z becomes a)
# # Then capitalize every vowel in this new string (a, e, i, o, u) and
# # finally return this modified string.
# # Sample Test Cases
# #
# # Input:"hello*3"
# letterChanges("hello*3 za")
# #
# # Output:"Ifmmp*3"
# #
# # Input:"fun times!"
# letterChanges "fun times!"
# #
# # Output:"gvO Ujnft!"
# #


# def longestWord(sentence)
#   #remove non-alpha chars
#   sentence = sentence.split(" ")
#   longest = ""
#   for i in 0...sentence.length
#     # puts i
#     current = sentence[i].gsub(/\W/,'')
#     # puts current
#     longest = current if current.length > longest.length
#   end
#   # sentence.gsub!(/\W/,'')
#   # sentence.gsub!(/[^a-z\b]/i, '')
#   # puts sentence
#   puts longest
# end
#
# #
# longestWord("fun&!! time")
# #
# # Output:"time"
# #
# # Input:"I love dogs"
# #
# # Output:"love"
#


# def migratoryBirds(ar)
#   # "hi"
#   # limit: 1,2,3,4,5 are the only types
#   counting_ar = Array.new(5)
#   counting_ar.each_with_index {|e,index| counting_ar[index]= 0}
#   # counting_ar.size #5
#   # counting_ar[0] #nil
#   ar.each do |element|
#     counting_ar[element-1] += 1
#   end
#   most_common_bird = 1 #default
#   most_common_bird_count = counting_ar[0]
#   counting_ar.each_with_index do |element,index|
#     if element > most_common_bird_count
#       most_common_bird = index+1 #its plus 1 because 1-5 not 0-4
#     end
#   end
#   # counting_ar
#   most_common_bird
# end
#
# puts migratoryBirds([1, 4, 4, 4, 5, 3])
#

# n = 6
# k = 3
# ar = [1, 3, 2, 6, 1, 2]
#
# def divisibleSumPairs(n, k, ar)
#   # "test"
#   #n is just array.size
#   #k is the number to mod with
#   # num1 < num2
#   count_of_pairs = 0
#   array_size = ar.size
#   counter = 0
#   while counter < array_size
#     i = ar[0]
#     ar.shift
#     ar.each do |element|
#       # puts "#{i} and #{element}"
#       # if i < element
#         # puts "#{i} + #{element} % #{k} = #{(i+element) % k}"
#         if (i+element) % k === 0
#           count_of_pairs +=1
#         end
#       # end #if
#     end
#     counter +=1
#   end #while
#   count_of_pairs
# end
#
# puts divisibleSumPairs(n,k,ar)
#

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
