# Reordered Power of 2
# Starting with a positive integer N,
# reorder the digits in any order (including the original order) such that the leading digit is not zero.
# Return true if and only if we can do this in a way such that the resulting number is a power of 2.

#find all possible reordered variations and return an array of them

def remove_if_first_is_zero arr
    arr.select {|n| n[0] != '0'}
end

def possible_orders(n)
  digits = n.to_s.split("").permutation.map(&:join)
  remove_if_first_is_zero(digits)
end

def reordered_power_of2(n)
  possible = possible_orders(n)
  puts "#{possible}"
  # "test"
end

puts reordered_power_of2 1     # Output: true
puts reordered_power_of2 10     # Output: false
puts reordered_power_of2 16     # Output: true
puts reordered_power_of2 24     # Output: false
puts reordered_power_of2 46     # Output: true
puts reordered_power_of2 281     #output true
#*********************************************************************************************

# #create linklist in ruby
# ll = {data: 1, next: {data:2, next: nil}}
# ll2 = {data: 1, next: {data:2, next: {data: 2, next: {data:1, next: nil}}}}
#
# # Given a singly linked list, determine if it is a palindrome.
# #
# # Example 1:
# #
# # Input: 1->2
# # Output: false
# # Example 2:
# #
# # Input: 1->2->2->1
# # Output: true
#
# def convert_ll_to_array(head)
#   arr = []
#   current = head
#   # puts current
#   while !current.nil? do
#     # puts "test"
#     # puts current[:data]
#     arr.push(current[:data])
#     current = current[:next]
#   end
#   # puts arr
#   arr
# end
#
# def is_palindrome(head)
#   arr = convert_ll_to_array(head)
#   start = 0
#   while arr.length >1 do
#     start = arr.shift
#     last = arr.pop
#     if start != last
#       return false
#     end #if
#   end #while
#   # "wow"
#   true
# end
# puts "#{is_palindrome ll}"
# puts "#{is_palindrome ll2}"
#
#
#
# Given an integer, return its base 7 string representation.
#
# Example 1:
# Input: 100
# Output: "202"
# Example 2:
# Input: -7
# Output: "-10"

  #0-6 is what each placement would be
  #10s to 7s
  #6 would be 6, 7 would be 10, 14 would be 20, 21 would be 30

  # 7s to 10
  #66 would be 6*7 + 6 = 42 + 6 = 48
  #100 would be 7 x 7 = 49
  #200 would be 2(7*7) = 49 *2 = 98
  #666 would be 6(7*7) + 6*7 + 6 = 294 + 42 + 6 = 342
  #1000 would be 1(7*7*7)  = 343
  # 343 / 7 /7 /7  = 1
  # bsic algo

  # 342 % 7 = 6
  # 342 - 6 = 336
  # 336 % 7 = 0 # might only need 1 modulus
  # 336 / 7 = 48
  # 48 % 7 = 6
  # 48 - 6 = 42
  # 42 % 7 = 0
  # 42 / 7 = 6
  # if value < 7 done
#PSEUDOCODE************
# array = []
# value = 343
# (done 1 time for the single digit)
# remainder = value mod 7 : 343 % 7 = 0
# value = value minus remainder(0) : 343 = 343 - 0
# push remainder to array : array = [0]
# while value > 7
#   value = value div 7 : 343 / 7 = 49
#   remainder = value mod 7 : 49 % 7 = 0
#   value = value minus remainder(0) : 49 = 49 - 0
#   push remainder to array : array = [0,0]
# while value > 7
#   value = value div 7 : 49 / 7 = 7
#   remainder = value mod 7 : 7 % 7 = 0
#   value = value minus remainder(0) : 7 = 7 - 0
#   push remainder to array : array = [0,0,0]
# while value > 7
#   value = value div 7 : 7 / 7 = 1
#   remainder = value mod 7 : 1 % 7 = 1
#   value = value minus remainder(0) : 0 = 1 - 1
#   push remainder to array : array = [0,0,0,1]
# Break loop
# array.join.reverse == '1000'
# def convertToBase7  num
#   remainders = []
#   negative = false
#   if num < 0
#     num = num.abs
#     negative = true
#   end
#   # remainder = num % 7
#   # num = num - remainder
#   # remainders.push(remainder)
#   while num > 0 do
#     remainder = num % 7
#     num = num - remainder
#     num = num / 7
#     remainders.push(remainder)
#   end # while
#   negative ? "-#{remainders.reverse.join}": "#{remainders.reverse.join}"
# end
#
# puts convertToBase7 343
# puts convertToBase7 -343
# puts convertToBase7 342
# puts convertToBase7 98
# puts convertToBase7 -98

# # Given an unsorted array of integers, find the length of longest increasing subsequence.
#
#
#
# def length_of_LIS array
#   puts array.min
#   puts array.max
#   current_longest = 0
#   counter = 1
#   current_LIS_length = 0
#   while counter < array.size
#     if array[counter] > array[counter-1]
#       if current_LIS_length == 0
#         current_LIS_length = 2
#       else
#         current_LIS_length +=1
#
#       end #if inner
#     else
#       current_longest = current_LIS_length if current_LIS_length > current_longest
#       current_LIS_length = 0
#     end  #if outer
#     counter +=1
#   end #while
#   current_longest
# end
#
# puts length_of_LIS [10,9,2,5,3,7,101,18]
# # Output: 4
# # Explanation: The longest increasing subsequence is [2,3,7,101], therefore the length is 4.


# # Given an array nums containing n + 1 integers where each integer is between 1 and n (inclusive),
# # prove that at least one duplicate number must exist.
# # Assume that there is only one duplicate number, find the duplicate one.
# # You must not modify the array (assume the array is read only).
# # You must use only constant, O(1) extra space.
# # Your runtime complexity should be less than O(n2).
# # There is only one duplicate number in the array, but it could be repeated more than once.
#
#
#
# def find_duplicate array
#   counted = Hash.new
#   array.each do |elm|
#     if counted[elm]
#       return elm
#     end #if
#     counted[elm] = 1
#   end #each
#   "none"
# end
#
# puts find_duplicate [1,3,4,2,2]
# # Output: 2
# puts find_duplicate [3,1,3,4,2]
# # Output: 3



# # Given an array nums, write a function to move all 0's to the end of it
# # while maintaining the relative order of the non-zero elements.
# # You must do this in-place without making a copy of the array.
# # Minimize the total number of operations.
# def move_zeroes array
#   counter = 0
#   start_of_zeros = array.length
#   while(counter < start_of_zeros)
#     if( array[counter] == 0)
#       array.push(array.slice!(counter))
#       counter -=1
#       start_of_zeros -= 1
#     end #if
#     counter += 1
#   end #while
#   puts array
# end
#
# move_zeroes [0,1,0,3,12]
# # Output: [1,3,12,0,0]
#



# # Given an array of size n, find the majority element.
# # The majority element is the element that appears more than ⌊ n/2 ⌋ times.
# #
# # You may assume that the array is non-empty and the majority element always exist in the array.
# #
# # Example 1:
# #
# # Input: [3,2,3]
# # Output: 3
# # Example 2:
# #
# # Input: [2,2,1,1,1,2,2]
# # Output: 2
#
# def find_highest(hash)
#   highest_key = nil
#   highest_value = nil
#   hash.each do |key,value|
#     if highest_value == nil
#       highest_key = key
#       highest_value = value
#     else
#       if highest_value < value
#         highest_key = key
#         highest_value = value
#       end  #inner if
#     end  #if else
#   end  #each
#   highest_key
# end
#
# def majorityElement(array)
#   counter = Hash.new
#   array.each do |elm|
#     if counter[elm].nil?
#       counter[elm] = 0
#     else
#       counter[elm] += 1
#     end  #if
#   end #each
#   find_highest counter
# end
#
# value = majorityElement([3,2,3])
# puts value
# # Output: 3
#
# value2 = majorityElement([2,2,1,1,1,2,2])
# puts value2
# # Output: 2
