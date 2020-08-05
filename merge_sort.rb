def merge_sort(num_array)

  return num_array if num_array.length <= 1
  half = (num_array.length / 2)
  left_array = merge_sort(num_array[0..half - 1])
  right_array = merge_sort(num_array[half..num_array.length - 1])
  merge(left_array, right_array)
end

def merge(left_array, right_array)
  return left_array if right_array == []
  return right_array if left_array == []

  return_array = []
  if left_array[0] < right_array[0]
    return_array.push(left_array[0]) + merge(left_array[1..left_array.length], right_array)
  else
    return_array.push(right_array[0]) + merge(right_array[1..right_array.length], left_array)
  end
end

num_array = Array.new(20) { rand(1..100) }

print "#{merge_sort(num_array)}\n"
