# frozen_string_literal: true

require_relative 'sorted'

class Mergesort
  def self.mergesort(arr)
    return arr if arr.length == 1

    left_arr = mergesort(arr[0..(arr.length / 2) - 1])
    right_arr = mergesort(arr[(arr.length / 2)..])
    merge(left_arr, right_arr)
  end

  def self.merge(left_arr, right_arr)
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

  private_class_method :merge
end
