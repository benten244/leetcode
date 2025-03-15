def find_relative_ranks(score)
  reverse_score = score.sort {|a, b| b <=> a}
  place         = 1
  place_hash    = {}

  reverse_score.each_with_index do |rs, index|
      case place
      when 1
          place_hash[rs] = 'Gold Medal'
      when 2
          place_hash[rs] = "Silver Medal"
      when 3
          place_hash[rs] = "Bronze Medal"
      else
          place_hash[rs] = place.to_s
      end

      place += 1
  end

  answer = []

  score.each do |rs|
      answer << place_hash[rs]
  end

  answer
end

# Refactor
def find_relative_ranks(score)

  index_hash = {}

  score.each_with_index {|sc, index| index_hash[sc] = index}
end
