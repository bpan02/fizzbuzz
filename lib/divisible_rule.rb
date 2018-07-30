class DivisibleRule
  def initialize(output, divisor)
    @output  = output
    @divisor = divisor
  end

  def stringify(integer)
    result = ''
    while divisible_by?(integer, @divisor) do
      result  += @output
      integer = integer/@divisor
    end
    result
  end

  private
  def divisible_by?(integer, divisor)
    integer % divisor == 0
  end
end

