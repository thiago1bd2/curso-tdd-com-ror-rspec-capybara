# frozen_string_literal: true

require 'ffaker'

# Helper modules for random things
module Helper
  # Only odd numbers in a range
  # @param [Integer] - range starts at
  # @param [Integer] - range ends at
  # @return [Integer]
  def self.give_me_odd_number(start_at = 1, end_at = 1)
    number = nil
    loop do
      number = FFaker::Random.rand(start_at..end_at)
      redo if number.even?
      break
    end
    number
  end

  # Only even numbers in a range
  # @param [Integer] - range starts at
  # @param [Integer] - range ends at
  # @return [Integer]
  def self.give_me_even_number(start_at = 2, end_at = 2)
    number = nil
    loop do
      number = FFaker::Random.rand(start_at..end_at)
      redo if number.odd?
      break
    end
    number
  end
end
