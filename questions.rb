a = [-4, 3, -9, 0, 4, 1]
def plusMinus(arr)
  zero = 0
  pos = 0
  neg = 0
  arr.each do |x|
    if x === 0
      zero +=1
    elsif x > 0
      pos +=1
    elsif  x < 0
      neg +=1
    end
  end   #each

  # arr
  # [zero,pos,neg]
  return [pos.to_f/arr.length, neg.to_f/arr.length, zero.to_f/arr.length]

end

puts "#{plusMinus(a)}"


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
