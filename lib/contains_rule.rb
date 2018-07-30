class ContainsRule
  def initialize(output, substring)
    @output    = output
    @substring = substring
  end

  def stringify(integer)
    result = ''
    integer.to_s.each_char do |char|
      if char.include?(@substring)
        result += @output
      end
    end
    result
  end
end
