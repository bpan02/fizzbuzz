class FizzBuzz
  def fizz_buzzify(input)
    result = ''

    result = divisible_by(input, 5, 'Fizz', result)
    result = divisible_by(input,7,'Buzz', result)

    input.to_s.each_char do |char|
      if char.include?('5')
        result += 'Fizz'
      end
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

