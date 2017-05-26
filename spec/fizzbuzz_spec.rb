
require 'fizz_buzz'

describe Fizzbuzz do
 describe ".GetString" do
   subject (:fizzbuzz) { Fizzbuzz.new }

   context "given a '1'" do
     it "returns 1" do
       expect(fizzbuzz.GetString(1)).to eql("1")
     end
   end

   context "given a '3'" do
     it "returns 1" do
       expect(fizzbuzz.GetString(3)).to eql("fizz")
     end
   end

   context "given a '2'" do
     it "returns 1" do
       expect(fizzbuzz.GetString(2)).to eql("2")
     end
   end

   context "given a '6'" do
     it "returns 1" do
       expect(fizzbuzz.GetString(6)).to eql("fizz")
     end
   end

   context "given a '5'" do
     it "returns 1" do
       expect(fizzbuzz.GetString(5)).to eql("buzz")
     end
   end

 end

end