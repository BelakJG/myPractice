# frozen_string_literal: true

def sorted?(arr)
  (0..arr.length - 2).each do |n|
    return false if arr[n] > arr[n + 1]
  end
  true
end
