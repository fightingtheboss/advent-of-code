priorities = ([nil] + ('a'..'z').to_a + ('A'..'Z').to_a)

result = File.read('day3.txt').split("\n").reduce(0) do |priority_sum, line|
  backpack = line.split('')
  compartment_size = line.length / 2

  priority_sum += priorities.index((backpack[0...compartment_size] & backpack[compartment_size..]).first)
end

puts result

