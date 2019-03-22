class NumberGenerator
  attr_accessor :picked_number
  attr_reader :number_start, :number_end, :number_range

  def initialize(picked_number)
    @picked_number = picked_number
    @number_start = Phone::NUMBER_START
    @number_end = Phone::NUMBER_END
    @number_range = number_start..number_end
  end

  def call
    return picked_number if number_valid?(picked_number)

    loop do
      number = rand(number_range)
      return number if number_valid?(number)
    end
  end

  def number_valid?(number)
    number.between?(number_start, number_end) && Phone.registered_numbers.exclude?(number)
  end
end
