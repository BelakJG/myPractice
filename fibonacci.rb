def fibonacci(n, first = 0, second = 1)
  return first if n == 0
  return second if n == 1

  fibonacci(n - 1, first, second) + fibonacci(n - 2, first, second)
end

puts fibonacci(10)
