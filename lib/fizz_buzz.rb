require_relative 'divisible_rule.rb'
require_relative 'contains_rule.rb'

class FizzBuzz
  def stringify(input)
    rule1 = DivisibleRule.new('Fizz',5)
    rule2 = DivisibleRule.new('Buzz',7)
    rule3 = ContainsRule.new('Fizz','5')
    rule4 = ContainsRule.new('Buzz','7')

    result = rule1.stringify(input) +
      rule2.stringify(input) +
      rule3.stringify(input) +
      rule4.stringify(input)

    if result.empty?
      input.to_s
    else
      result
    end
  end

  def prints(range)
    result = ''
    range.each do |i|
      result += stringify(i) + ' '
    end
    puts result
  end
end

