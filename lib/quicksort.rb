# frozen_string_literal: true

require_relative 'sorted'

class Quicksort
  def self.quicksort(array, left_index, right_index)
    return if left_index >= right_index

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
    quicksort(array, left_index, swap_index - 1)
    quicksort(array, swap_index + 1, right_index)
  end

  def self.swap(array, left, right)
    temp = array[left]
    array[left] = array[right]
    array[right] = temp
  end

  private_class_method :swap
end
