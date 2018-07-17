class FizzBuzz
  def get_string(integer)
    rule1 = DivisibleRule.new('Fizz', 5)
    rule2 = ContainsRule.new('Fizz', '5')
    result = rule1.get_string(integer) + rule2.get_string(integer)

    dup = integer.dup
    while dup % 7 == 0 do
      result += 'Buzz'
      dup = dup/7
    end
    integer.to_s.each_char do |char|
      if char.include?('7')
        result += 'Buzz'
      end
    end

    if result.empty?
      integer.to_s
    else
      result
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







