LOSE = 0
DRAW = 3
WIN = 6

MUST_LOSE = 'X'
MUST_DRAW = 'Y'
MUST_WIN = 'Z'

OPPONENT_ROCK = 'A'
OPPONENT_PAPER = 'B'
OPPONENT_SCISSORS = 'C'

shapes = {
  rock: 1,
  paper: 2,
  scissors: 3
}

result = File.read("day2.txt").split("\n").reduce(0) do |memo, round|
  them, outcome = round.strip.split(' ').map(&:strip)

  case them
  when OPPONENT_ROCK
    case outcome
    when MUST_WIN
      shape_score = shapes[:paper]
      outcome_score = WIN
    when MUST_LOSE
      shape_score = shapes[:scissors]
      outcome_score = LOSE
    when MUST_DRAW
      shape_score = shapes[:rock]
      outcome_score = DRAW
    end
  when OPPONENT_PAPER
    case outcome
    when MUST_WIN
      shape_score = shapes[:scissors]
      outcome_score = WIN
    when MUST_LOSE
      shape_score = shapes[:rock]
      outcome_score = LOSE
    when MUST_DRAW
      shape_score = shapes[:paper]
      outcome_score = DRAW
    end
  when OPPONENT_SCISSORS
    case outcome
    when MUST_WIN
      shape_score = shapes[:rock]
      outcome_score = WIN
    when MUST_LOSE
      shape_score = shapes[:paper]
      outcome_score = LOSE
    when MUST_DRAW
      shape_score = shapes[:scissors]
      outcome_score = DRAW
    end
  end

  memo += shape_score + outcome_score
end

puts result
