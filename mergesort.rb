require './sorted'

def mergesort(arr)
  return arr if arr.length == 1

  left_arr = mergesort(arr[0..(arr.length / 2) - 1])
  right_arr = mergesort(arr[(arr.length / 2)..])
  merge(left_arr, right_arr)
end

def merge(left_arr, right_arr)
  new_arr = []
  while !left_arr.empty? && !right_arr.empty?
    if left_arr[0] < right_arr[0]
      new_arr.push(left_arr.shift)
    else
      new_arr.push(right_arr.shift)
    end
  end
  new_arr + left_arr + right_arr
end

# just testing if function works
test_array = []
still_sorted = true
100.times do
  test_array = []
  5000.times do
    test_array.push(rand(0..500))
  end
  sorted_array = mergesort(test_array)
  if test_array.length != sorted_array.length
    still_sorted = false
    puts 'arrays are different lengths'
    break
  end
  still_sorted = sorted?(sorted_array)
end
p still_sorted
