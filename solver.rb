class Solver
  def factorial(num)
    raise ArgumentError, 'Negative numbers are not allowed.' if num.negative?
    return 1 if [0, 1].include?(num)


    num * factorial(num - 1)
  end

  def reverse(string)
    string.reverse
  end
end
