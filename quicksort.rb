# frozen_string_literal: true

def quicksort(array, left_index, pivot_index)
  return if left_index == pivot_index

  (left_index + 1..pivot_index - 1).each do |n|
    next unless array[n] < array[pivot_index]

    left_index += 1
    swap(array, left_index, n)
  end
  left_index += 1
  swap(array, left_index, pivot_index)
  quicksort(array, left_index, pivot_index)
  quicksort(array, -1, left_index - 1)
  array
end

def swap(array, left, right)
  temp = array[left]
  array[left] = array[right]
  array[right] = temp
end

test_array = []
10.times do
  test_array.push(rand(0..25))
end
p test_array
p quicksort(test_array, -1, test_array.length - 1)
