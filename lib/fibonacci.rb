# Computes the nth fibonacci number in the series starting with 0.
# fibonacci series: 0 1 1 2 3 5 8 13 21 ...
# e.g. 0th fibonacci number is 0
# e.g. 1st fibonacci number is 1
# ....
# e.g. 6th fibonacci number is 8

# def fibonacci(n)
#   raise ArgumentError.new("need an integer") if n.nil? || n < 0
#   return 0 if n == 0
#   first = 0
#   second = 1
#   count = 0
#   until count == n - 1
#     third = first + second
#     first = second
#     second = third
#     count += 1
#   end
#   second
# end

def fibonacci(n)
  raise ArgumentError.new("Must be positive int") if !n.is_a?(Integer) || n < 0
  return fibonacci_helper(n)
end


def fibonacci_helper(n)
  return n <= 1 ? n : fibonacci_helper(n - 2) + fibonacci_helper(n - 1)
end
