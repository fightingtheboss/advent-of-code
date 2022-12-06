result = File.read('day4.txt').split("\n").reduce(0) do |contained, line|
  first, second = line.split(',').map { |sections| sections.match(/(\d+)\-(\d+)/) { |match| (match[1].to_i..match[2].to_i).to_a } }
  contained += (first & second).empty? ? 0 : 1
end

puts result
