class Solver
  def factorial(num)
    raise ArgumentError, 'Negative numbers are not allowed.' if num.negative?
    return 1 if [0, 1].include?(num)


    num * factorial(num - 1)
  end

  def reverse(string)
    string.reverse
  end

  def fizzbuzz(num)
    if (num % 15).zero?
      'fizzbuzz'
    elsif (num % 3).zero?
      'fizz'
    elsif (num % 5).zero?
      'buzz'
    else
      num.to_s
    end
  end
end
