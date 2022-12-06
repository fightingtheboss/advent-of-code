priorities = ([nil] + ('a'..'z').to_a + ('A'..'Z').to_a)

result = File.read('day3.txt').split("\n").each_slice(3).reduce(0) do |priority_sum, lines|
  backpacks = lines.map { |line| line.split('') }

  priority_sum += priorities.index(backpacks[0].intersection(backpacks[1], backpacks[2]).first)
end

puts result

