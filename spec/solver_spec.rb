require './solver'

describe Solver do

solver = Solver.new
  
  describe "#factorial" do
    it "should return the factorial of a number >= 0" do
      expect(solver.factorial(4)).to eq 24
    end
  end

end
