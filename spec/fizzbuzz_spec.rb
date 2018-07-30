require_relative '../lib/fizz_buzz'

describe FizzBuzz do
  describe '.fizz_buzzify' do
    subject (:fizzbuzz) { FizzBuzz.new }

    context "given a '1'" do
      it 'returns 1' do
        expect(fizzbuzz.stringify(1)).to eql('1')
      end
    end

    context "given a '5'" do
      it 'returns Fizz' do
        expect(fizzbuzz.stringify(5)).to eql('FizzFizz')
      end
    end

    context "given a '2'" do
      it 'returns 2' do
        expect(fizzbuzz.stringify(2)).to eql('2')
      end
    end

    context "given a '46'" do
      it 'returns 46' do
        expect(fizzbuzz.stringify(46)).to eql('46')
      end
    end

    context "given a '47'" do
      it 'returns Buzz' do
        expect(fizzbuzz.stringify(47)).to eql('Buzz')
      end
    end

    context "given a '49'" do
      it 'returns BuzzBuzz' do
        expect(fizzbuzz.stringify(49)).to eql('BuzzBuzz')
      end
    end

    context "given a '50'" do
      it 'returns FizzFizzFizz' do
        expect(fizzbuzz.stringify(50)).to eql('FizzFizzFizz')
      end
    end
  end

  describe '.prints' do
    subject (:fizzbuzz) { FizzBuzz.new }
    context "given range '46..50'" do
      it 'returns 46 Buzz BuzzBuzz FizzFizzFizz' do
        expect { fizzbuzz.prints(46..50) }.to output("46 Buzz 48 BuzzBuzz FizzFizzFizz \n").to_stdout
      end
    end
  end
end
