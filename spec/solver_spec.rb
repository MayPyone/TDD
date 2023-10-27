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
end