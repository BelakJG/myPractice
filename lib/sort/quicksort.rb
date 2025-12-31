# frozen_string_literal: true

require_relative 'sorted'

class Quicksort
  THRESHOLD = 16

  def self.quicksort(array, left_index = 0, right_index = array.length - 1)
    return if left_index >= right_index

    pivot_index = rand(left_index..right_index)
    temp = array[pivot_index]
    array[pivot_index] = array[right_index]
    array[right_index] = temp

    swap_index = left_index - 1
    pivot = array[right_index]
    (left_index...right_index).each do |n|
      next unless array[n] <= pivot

      swap_index += 1
      temp = array[swap_index]
      array[swap_index] = array[n]
      array[n] = temp
    end
    swap_index += 1
    temp = array[swap_index]
    array[swap_index] = array[right_index]
    array[right_index] = temp
    if (swap_index - 1) - left_index <= THRESHOLD
      insertion_sort(array, left_index, swap_index - 1)
    else
      quicksort(array, left_index, swap_index - 1)
    end
    if right_index - (swap_index + 1) <= THRESHOLD
      insertion_sort(array, swap_index + 1, right_index)
    else
      quicksort(array, swap_index + 1, right_index)
    end
  end

  def self.insertion_sort(arr, left, right)
    (left + 1..right).each do |i|
      key = arr[i]
      j = i - 1
      while j >= left && arr[j] > key
        arr[j + 1] = arr[j]
        j -= 1
      end
      arr[j + 1] = key
    end
  end

  private_class_method :insertion_sort
end
