result = File.read('day4.txt').split("\n").reduce(0) do |contained, line|
  ranges = line.split(',').map { |sections| sections.match(/(\d+)\-(\d+)/) { |match| (match[1].to_i..match[2].to_i) } }
  contained += 1 if ranges.first.cover?(ranges.last) || ranges.last.cover?(ranges.first)
  contained
end

puts result
