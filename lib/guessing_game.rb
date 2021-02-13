class GuessingGame
  def initialize(min, max)
    if min > max
      @secret_num = rand(max...min)
    else
      @secret_num = rand(min...max)
    end

    @num_attempts = 0
    @game_over = false
  end

  def num_attempts
    @num_attempts
  end

  def game_over?
    @game_over
  end

  def check_num(num)
    @num_attempts += 1
    if num == @secret_num
      @game_over = true
      p 'you win'
    elsif num > @secret_num
      p 'too big'
    elsif num < @secret_num
      p 'too small'
    end

  end

  def ask_user
    p 'enter a number'

    input_num = gets.chomp
    exit if input_num == 'q'
    check_num(input_num.to_i)
  end

end
