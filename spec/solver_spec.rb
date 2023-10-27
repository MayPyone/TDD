require './solver'

describe Solver do
  solver = Solver.new

  describe "#factorial" do
    it "should raise an exception if a number is negative" do
      expect { solver.factorial(-4) }.to raise_error(ArgumentError, "Negative numbers are not allowed.")
    end

    it "does not raise an error for positive numbers" do
      expect { solver.factorial(10) }.not_to raise_error
    end

    it "should return the factorial of a number >= 0" do
      expect(solver.factorial(4)).to eq 24
    end
  end

  describe "#reverse" do
    it "should return a reversed string" do
      expect(solver.reverse("hello")).to eq "olleh"
    end
  end

  describe "#fizzbuzz" do
    context "If a given number is divisible by 3" do
      it "should return 'fizz'" do
        expect(solver.fizzbuzz(9)).to eq "fizz"
      end
    end

    context "If a given number is divisible by 5" do
      it "should return 'buzz'" do
        expect(solver.fizzbuzz(10)).to eq "buzz"
      end
    end

    context "If a given number is divisible by both 3 and 5" do
      it "should return 'fizzbuzz'" do
        expect(solver.fizzbuzz(15)).to eq "fizzbuzz"
      end
    end

    context "If a given number is not divisible by either 3 or 5" do
      it "should return the number itself as a string" do
        expect(solver.fizzbuzz(16)).to eq "16"
      end
    end
  end
end