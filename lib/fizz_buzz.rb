class FizzBuzz
  def get_string(integer)
    rule1 = DivisibleRule.new('Fizz', 5)
    rule2 = ContainsRule.new('Fizz', '5')

    rule3 = DivisibleRule.new('Buzz', 7)
    rule4 = ContainsRule.new('Buzz', '7')

    result = rule1.get_string(integer) +
      rule2.get_string(integer) +
      rule3.get_string(integer) +
      rule4.get_string(integer)

    if result.empty?
      integer.to_s
    else
      result
    end
  end
end



  def prints(range)
    result = ''
    range.each do |i|
      result += get_string(i) + ' '
    end
    puts result
  end
end

class DivisibleRule
  def initialize(output_text, divisor)
    @text = output_text
    @divisor = divisor
    @matched_count = 0
  end

  def get_string(integer)
    result = ''
    while divisible_by?(integer, @divisor) do
      result += @text
      integer = integer/@divisor
    end
    result
  end

  private
  def divisible_by?(integer, divisor)
    integer % divisor == 0
  end
end

class ContainsRule
  def initialize(output_text, substring)
    @text = output_text
    @substring = substring
  end

  def get_string(integer)
    result = ''
    integer.to_s.each_char do |char|
      if char.include?(@substring)
        result += @text
      end
    end
    result
  end
end







