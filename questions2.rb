# Given an array nums, write a function to move all 0's to the end of it
# while maintaining the relative order of the non-zero elements.
# You must do this in-place without making a copy of the array.
# Minimize the total number of operations.
def move_zeroes array
  counter = 0
  start_of_zeros = array.length
  while(counter < start_of_zeros)
    if( array[counter] == 0)
      array.push(array.slice!(counter))
      counter -=1
      start_of_zeros -= 1
    end #if
    counter += 1
  end #while
  puts array
end

move_zeroes [0,1,0,3,12]
# Output: [1,3,12,0,0]




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
