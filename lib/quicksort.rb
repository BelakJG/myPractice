# frozen_string_literal: true

require_relative 'sorted'

class Quicksort
  def self.quicksort(array, left_index, pivot_index)
    return if left_index == pivot_index

    (left_index + 1..pivot_index - 1).each do |n|
      next unless array[n] < array[pivot_index]

      left_index += 1
      swap(array, left_index, n)
    end
    swap(array, left_index + 1, pivot_index)
    quicksort(array, left_index + 1, pivot_index)
    quicksort(array, -1, left_index)
    array
  end

  def self.swap(array, left, right)
    temp = array[left]
    array[left] = array[right]
    array[right] = temp
  end

  private_class_method :swap
end
