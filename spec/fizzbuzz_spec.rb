
require 'fizz_buzz'
#1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz
describe Fizzbuzz do
 describe ".GetString" do
   subject (:fizzbuzz) { Fizzbuzz.new }

   context "given a '1'" do
     it "returns 1" do
       expect(fizzbuzz.get_string(1)).to eql("1")
     end
   end

   context "given a '3'" do
     it "returns Fizz" do
       expect(fizzbuzz.get_string(3)).to eql("Fizz")
     end
   end

   context "given a '2'" do
     it "returns 2" do
       expect(fizzbuzz.get_string(2)).to eql("2")
     end
   end

   context "given a '6'" do
     it "returns Fizz" do
       expect(fizzbuzz.get_string(6)).to eql("Fizz")
     end
   end

   context "given a '5'" do
     it "returns Buzz" do
       expect(fizzbuzz.get_string(5)).to eql("Buzz")
     end
   end

   context "given a '7'" do
     it "returns Bang" do
       expect(fizzbuzz.get_string(7)).to eql("Bang")
     end
   end
   context "given a '15'" do
     it "returns FizzBuzz" do
       expect(fizzbuzz.get_string(15)).to eql("FizzBuzz")
     end
   end
   context "given a '21'" do
     it "returns FizzBang" do
       expect(fizzbuzz.get_string(21)).to eql("FizzBang")
     end
   end
   context "given a '105'" do
     it "returns FizzBuzzBang" do
       expect(fizzbuzz.get_string(105)).to eql("FizzBuzzBang")
     end
   end

 end
end
