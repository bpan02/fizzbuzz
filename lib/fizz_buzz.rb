class FizzBuzz
  def fizz_buzzify(input)
    result = ''
    dup = input.dup
    while dup % 5 == 0 do
      result += 'Fizz'
      dup = dup/5
    end
    input.to_s.each_char do |char|
      if char.include?('5')
        result += 'Fizz'
      end
    end
    dup = input.dup
    while dup % 7 == 0 do
      result += 'Buzz'
      dup = dup/7
    end
    input.to_s.each_char do |char|
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

  def prints(range)
    result = ''
    range.each do |i|
      result += fizz_buzzify(i) + ' '
    end
    puts result
  end
end

