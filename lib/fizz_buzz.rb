
class FizzBuzz
  def prints(start_range)
    end_range = start_range + 50
    if (start_range < 1 || end_range < 1)
      raise ArgumentError.new('start must be equal or greater than 1')
    end
    if (start_range > end_range)
      raise ArgumentError.new('end_range must be equal or greater than start_range')
    end

    start_range.upto(end_range) {|i| puts get_string(i)}
  end

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

start = ARGV[0].to_i
FizzBuzz.new.prints(start)
