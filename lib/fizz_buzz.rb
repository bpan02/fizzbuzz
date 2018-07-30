class FizzBuzz
  def fizz_buzzify(input)
    result = ''

    result = divisible_by(input, 5, 'Fizz', result)
    result = divisible_by(input,7,'Buzz', result)

    result = contains(input, 5, 'Fizz', result)
    result = contains(input, 7, 'Buzz', result)

    if result.empty?
      input.to_s
    else
      result
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

