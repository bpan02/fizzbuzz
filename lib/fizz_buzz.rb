class FizzBuzz
  def fizz_buzzify(input)
    rule1 = DivisibleRule.new('Fizz',5)
    rule2 = DivisibleRule.new('Buzz',7)

    result = rule1.stringify(input) +
      rule2.stringify(input)
    
    result = contains(input, 5, 'Fizz', result)
    result = contains(input, 7, 'Buzz', result)

    if result.empty?
      input.to_s
    else
      result
    end
  end


  class DivisibleRule
    def initialize(output, divisor)
      @output = output
      @divisor = divisor
    end

    def stringify(integer)
      result = ''
      while divisible_by?(integer, @divisor) do
        result += @output
        integer = integer/@divisor
      end
      result
    end

    private
    def divisible_by?(integer, divisor)
      integer % divisor == 0
    end
  end

  def contains(input, target, output, result)
    input.to_s.each_char do |char|
      if char.include?(target.to_s)
        result += output
      end
    end
    result
  end

  def divisible_by(input, divisor, output, result)
    dup = input.dup
    while dup % divisor == 0 do
      result += output
      dup    = dup/divisor
    end
    result
  end

  def prints(range)
    result = ''
    range.each do |i|
      result += fizz_buzzify(i) + ' '
    end
    puts result
  end
end

