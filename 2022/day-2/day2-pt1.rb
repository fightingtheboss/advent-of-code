ROCK = 'X'
PAPER = 'Y'
SCISSORS = 'Z'

OPPONENT_ROCK = 'A'
OPPONENT_PAPER = 'B'
OPPONENT_SCISSORS = 'C'

result = File.read("day2.txt").split("\n").reduce(0) do |memo, round|
  them, me = round.strip.split(' ').map(&:strip)

  shape_score = case me
  when ROCK then 1
  when PAPER then 2
  when SCISSORS then 3
  end

  outcome_score = case them
  when OPPONENT_ROCK
    case me
    when ROCK then 3
    when PAPER then 6
    when SCISSORS then 0
    end
  when OPPONENT_PAPER
    case me
    when ROCK then 0
    when PAPER then 3
    when SCISSORS then 6
    end
  when OPPONENT_SCISSORS
    case me
    when ROCK then 6
    when PAPER then 0
    when SCISSORS then 3
    end
  end

  memo += shape_score + outcome_score
end

puts result
