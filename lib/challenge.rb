# frozen_string_literal: true

class FibonacciRange
  include Enumerable

  def initialize(stop)
    @stop = stop
    @current_fib = 0
    @previous_fib = 0
    @next_fib = 1
    @answer = [0]
  end

  def each
    while @current_fib < @stop do
      yield @current_fib
      @current_fib = @next_fib
      @next_fib = @current_fib + @previous_fib
      @previous_fib = @current_fib
    end
  end
end


# FibonacciRange.new(10)


# current_fib, previous_fib, and next_fib
