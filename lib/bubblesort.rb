# frozen_string_literal: true

require_relative 'sorted'
class BubbleSort
  def self.sort(array)
    right_index = array.length - 1
    loop do
      swapped = false
      (0...right_index).each do |n|
        next unless array[n] > array[n + 1]

        temp = array[right_index]
        array[n] = array[right_index]
        array[right_index] = temp
        swapped = true
      end
      break unless swapped

      right_index -= 1
    end
  end
end
