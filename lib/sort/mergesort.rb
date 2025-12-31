# frozen_string_literal: true

require_relative 'sorted'

class Mergesort
  def self.mergesort(arr)
    return arr if arr.length <= 1

    mid = arr.length / 2
    left_arr = mergesort(arr[0...mid])
    right_arr = mergesort(arr[mid...])
    merge(left_arr, right_arr)
  end

  def self.merge(left_arr, right_arr)
    new_arr = []
    left = 0
    right = 0
    while left < left_arr.length && right < right_arr.length
      if left_arr[left] <= right_arr[right]
        new_arr << left_arr[left]
        left += 1
      else
        new_arr << right_arr[right]
        right += 1
      end
    end
    new_arr.concat(left_arr[left...])
    new_arr.concat(right_arr[right...])
    new_arr
  end

  private_class_method :merge
end
