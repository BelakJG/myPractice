def hanoi(rings, origin = 'A', aux = 'B', dest = 'C')
  if rings == 1
    puts "move #{origin} to #{dest}"
    return
  end
  hanoi(rings - 1, origin, dest, aux)
  puts "move #{origin} to #{dest}"
  hanoi(rings - 1, aux, origin, dest)
end

puts 'how many rings to solve for? '
hanoi(gets.chomp.to_i)
