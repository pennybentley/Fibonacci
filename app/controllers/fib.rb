def recursive_fib(x)

  if x < 2
    return x  
  else
    return recursive_fib(x - 1) + recursive_fib(x - 2)
  end
end

def iterative_fib(x)
  a = 1
  b = 1
  fib = 0
  # Calculate Fibonacci number in the xth position.
  x.times do
    fib = a
    a = b
    # Add previous two numbers in sequence.
    b = fib + b
  end
  return fib
end


require 'benchmark'
num = 35
Benchmark.bm do |x|
  x.report("recursive_fib") { recursive_fib(num) }
  x.report("iterative_fib") { iterative_fib(num)  }
end