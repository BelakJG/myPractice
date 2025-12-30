# frozen_string_literal: true

require './lib/mergesort'

test_arr = []
100.times do
  test_arr.push(rand(0..1000))
end
sorted_array = Mergesort.mergesort(test_arr)
p sorted_array
