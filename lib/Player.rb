class Player
  def initialize
    @rolling = []
    @rolls = 0
  end

  def roll_a_dice
    rand(6) + 1
  end

  def how_many(number)
    number.times do
      @rolling.push(roll_a_dice)
    end
    @rolls = @rolling
  end

  def knows_result
    hash_result = []
    for i in 1..@rolls.length
      hash_result << { roll: i, value: @rolling[i - 1] }
      i += 1
    end
    hash_result
  end
end
