elves = []

File.open('day1.txt') do |f|
  current_elf = []

  f.each do |line|
    if line.strip.empty?
      elves << current_elf
      current_elf = []
    else
      current_elf << line.to_i
    end
  end
end

result = elves.map(&:sum).max

puts result
