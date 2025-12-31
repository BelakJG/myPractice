# frozen_string_literal: true

require_relative 'sorted'
class InsertionSort
  def self.insertion_sort(arr)
    (0...arr.length - 1).each do |left|
      (left + 1...arr.length).each do |right|
        swap(arr, left, right) if arr[left] > arr[right]
      end
    end
  end

  def self.swap(array, left, right)
    temp = array[left]
    array[left] = array[right]
    array[right] = temp
  end
end
