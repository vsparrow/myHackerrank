
a = [[11, 2, 4], [4, 5, 6], [10, 8, -12]]

def diagonalDifference(a)
  counter = 0
  lesscounter = a.length-1
  topdown = 0
  downtop = 0
  while counter < a.length
    topdown += a[counter][counter]
    downtop += a[counter][lesscounter]
    # puts "#{[a[counter], a[lesscounter]]}"
    # puts "#{[a[counter][counter], a[counter][lesscounter]]}"
    counter +=1
    lesscounter -=1
  end
  puts (topdown-downtop).abs
  # puts "#{[a.length, counter, lesscounter, topdown, downtop]}"
end

diagonalDifference(a)
