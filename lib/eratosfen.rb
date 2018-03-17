# frozen_string_literal: true

# Find all simple numbers not more than @max_number
class Eratosfen
  attr_reader :max_number

  def initialize(max_number)
    @max_number = max_number
  end
end
