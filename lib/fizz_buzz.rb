
class Fizzbuzz
  LookupTable =[
    {
      num:3,
      name:"Fizz"},
    {
      num:5,
      name:"Buzz"},
    {
      num:7,
      name:"Bang"},
  ].freeze

  def get_string(input)
    result = LookupTable.inject("") do |result, lookup|
      # puts "lookup=" + lookup
      if input % lookup[:num] == 0
        result += lookup[:name]
      else
        result
      end
    end

    if result == ""
      input.to_s
    else
      result
    end
  end
end
