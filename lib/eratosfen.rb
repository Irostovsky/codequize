# frozen_string_literal: true

# Find all simple numbers not more than @max_number
class Eratosfen
  attr_reader :max_number

  def initialize(max_number)
    @max_number = max_number
  end

  def call
    return [] if max_number < 2
    arr = (2..max_number).to_a
    i = arr.first
    while i <= Math.sqrt(max_number)
      arr.reject! { |el| (el % i).zero? && el > i }
      i += 1
    end
    arr
  end
end
