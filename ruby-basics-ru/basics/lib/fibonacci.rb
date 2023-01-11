# frozen_string_literal: true

# BEGIN
def fibonacci(n)
  fib1 = 1
  fib2 = 1

  fib_sum = 0
  i = 0
  if n < 0
    fib_sum = nil
  end
  if n == 0
    fib_sum = 0
  end
  if (n == 1) || (n == 2)
    fib_sum = 1
  end
  while i < n - 2
    fib_sum = fib1 + fib2
    fib1 = fib2
    fib2 = fib_sum
    i = i + 1
  end
  fib_sum
end
# END