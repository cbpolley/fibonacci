# iterating through the fibonnaci sequence.
def fibs(num)
  num_array = []
  0.upto num do |i|
    a = i > 1 ? num_array[num_array.length - 1] + num_array[num_array.length - 2] : 1
    num_array.push(a)
  end
  num_array
end

# returning the fibonnaci sequence with recursion
def fibs_rec(ary, num)
  return ary if num.negative?

  fibs_rec(ary, num - 1)
  num < 2 ? ary << 1 : ary << ary[ary.length - 1] + ary[ary.length - 2]
  ary
end

print "#{fibs(10)}\n"
print "#{fibs_rec([], 10)}\n"

