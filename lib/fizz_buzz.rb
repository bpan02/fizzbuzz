
class FizzBuzz
  def get_string(input)
    result = ''
    dup = input.dup
    while input % 5 == 0 do
      result += 'Fizz'
      input = input/5
    end
    dup.to_s.each_char do |char|
      if char.include?('5')
        result += 'Fizz'
      end
    end
    input = dup
    while input % 7 == 0 do
      result += 'Buzz'
      input = input/7
    end
    dup.to_s.each_char do |char|
      if char.include?('7')
        result += 'Buzz'
      end
    end
    if result.empty?
      input.to_s
    else
      result
    end
  end
end
